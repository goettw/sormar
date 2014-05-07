package org.sormar



import static org.springframework.http.HttpStatus.*

import java.util.regex.Pattern;

import org.junit.After;

import grails.converters.JSON
import grails.transaction.Transactional

import com.mongodb.BasicDBObject
import com.mongodb.DBCollection

@Transactional(readOnly = true)
class AssetController {
    AssetRelationService assetRelationService
    AssetGrammarService assetGrammarService
    ExpertService expertService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
	params.max = Math.min(max ?: 10, 100)
	respond Asset.list(params), model:[assetInstanceCount: Asset.count()]
    }

    def searchAsset(String searchPattern, Integer max) {
	System.out.println("searchPattern=" + searchPattern)
	params.max = Math.min(max ?: 10, 100)

	//def query = Asset.where { identifier.name =~ searchPattern }
	List assetList = Asset.findAll {
	    like(identifier.name,searchPattern+"%")
	}



	respond assetList, model:[assetInstanceCount: assetList.size()],view:"index"
    }

    def searchAssetForTextbox = {
	String searchPattern =  params.remove('term')
	BasicDBObject q = new BasicDBObject("identifier.name",Pattern.compile(searchPattern+"*"))
	

	List assetList = getCollection().distinct("identifier.name", q)
	System.out.println (assetList)
	render assetList as JSON
    }
    def mongo
    
    def getAssetVersions = {
	String searchPattern = params.remove('term')
	List assetList = getCollection().distinct("identifier.ver",new BasicDBObject ("identifier.name",searchPattern)); 
	render assetList as JSON
    }
    DBCollection coll = null
    def DBCollection getCollection () {
	def dsname = grailsApplication.config.grails.mongo.databaseName
	System.out.println "dsname" + dsname
	
	if (coll != null)
		return coll
	def db =  mongo.getDB(dsname)
	coll = db.getCollection("asset");
	return coll
    }
    
    def show(Asset assetInstance) {


	System.out.println assetGrammarService.entityTypes(grailsApplication)
	System.out.println assetGrammarService.validTargetTypes(grailsApplication,"Data Entity")
	System.out.println assetGrammarService.relationName(grailsApplication, "Data Entity", "Application Component")

	List assetRelations = assetRelationService.findAssetRelations(assetInstance.identifier.name,assetInstance.identifier.ver)
	respond assetInstance,model:[assetRelations: assetRelations]
    }
    def showByIdentifier (AssetIdentifier assetIdentifier) {
	System.out.println("assetIdentifier = " + assetIdentifier)
	def query = Asset.where {
	    identifier.name == assetIdentifier.name && identifier.ver == assetIdentifier.ver
	}
	Asset asset = query.find()
	System.out.println("asset="+asset)
	redirect (action:"show",id:asset.id)
    }
    def create() {
	Asset asset = new Asset(params)
	asset.constraints.type.inList = assetGrammarService.entityTypes(grailsApplication)
	respond asset
    }

    @Transactional
    def save(Asset assetInstance) {
	System.out.println("assetInstance = " + assetInstance)

	if (assetInstance == null) {
	    notFound()
	    return
	}

	if (assetInstance.hasErrors()) {
	    respond assetInstance.errors, view:'create'
	    return
	}
	assetInstance.save flush:true

	request.withFormat {
	    form multipartForm {
		flash.message = message(code: 'default.created.message', args: [
		    message(code: 'assetInstance.label', default: 'Asset'),
		    assetInstance.id
		])
		redirect assetInstance
	    }
	    '*' { respond assetInstance, [status: CREATED] }
	}
    }

    def edit(Asset assetInstance) {
	respond assetInstance
    }

    def relationComment(Asset assetInstance) {
	AssetRelationComment assetRelationCommentInstance = new AssetRelationComment()
	assetRelationCommentInstance.assetRelation = new AssetRelation()
	assetRelationCommentInstance.assetRelation.source = assetInstance.identifier
	assetRelationCommentInstance.assetRelation.target = assetInstance.identifier

	respond assetRelationCommentInstance,view:'editComment',model:["assetId":assetInstance.id]
    }
    def saveComment() {

	AssetRelationComment assetRelationCommentInstance = new AssetRelationComment (params["assetRelationCommentInstance"])
	if (assetRelationInstance == null) {
	    notFound()
	    return
	}

	if (assetRelationInstance.hasErrors()) {
	    respond assetRelationInstance.errors, view:'editComment'
	    return
	}

	// TODO: expert has to be removed as soon as security is implemented
	Expert expert = expertService.findOrCreate("wgoette")
	assetRelationService.commentAssetRelation(assetRelationCommentInstance.assetRelation, true, expert, assetRelationCommentInstance.comment)
	String assetId = params.asset.id.toString()
	System.out.println ("validate:"+assetRelationCommentInstance.validate())
	assetRelationCommentInstance.save()
	System.out.println ("saved"+assetRelationCommentInstance)
	redirect (action:"show", id:assetId)
    }

    @Transactional
    def update(Asset assetInstance) {
	if (assetInstance == null) {
	    notFound()
	    return
	}

	if (assetInstance.hasErrors()) {
	    respond assetInstance.errors, view:'edit'
	    return
	}

	assetInstance.save flush:true

	request.withFormat {
	    form multipartForm {
		flash.message = message(code: 'default.updated.message', args: [
		    message(code: 'Asset.label', default: 'Asset'),
		    assetInstance.id
		])
		redirect assetInstance
	    }
	    '*'{ respond assetInstance, [status: OK] }
	}
    }

    @Transactional
    def delete(Asset assetInstance) {

	if (assetInstance == null) {
	    notFound()
	    return
	}
	System.out.println "assetInstance="+assetInstance
	try {
	    assetInstance.delete flush:true
	} catch (Exception e) {
	    e.printStackTrace()
	}

	request.withFormat {
	    form multipartForm {
		flash.message = message(code: 'default.deleted.message', args: [
		    message(code: 'Asset.label', default: 'Asset'),
		    assetInstance.id
		])
		redirect action:"index", method:"GET"
	    }
	    '*'{ render status: NO_CONTENT }
	}
    }

    protected void notFound() {
	request.withFormat {
	    form multipartForm {
		flash.message = message(code: 'default.not.found.message', args: [
		    message(code: 'assetInstance.label', default: 'Asset'),
		    params.id
		])
		redirect action: "index", method: "GET"
	    }
	    '*'{ render status: NOT_FOUND }
	}
    }
}
