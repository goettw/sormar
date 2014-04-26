package org.sormar



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AssetController {
    AssetRelationService assetRelationService
    ExpertService expertService
    
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
	params.max = Math.min(max ?: 10, 100)
	respond Asset.list(params), model:[assetInstanceCount: Asset.count()]
    }

    def searchAsset(String searchPattern, Integer max) {
	System.out.println("searchPattern=" + searchPattern)
	params.max = Math.min(max ?: 10, 100)
	
	def query = Asset.where {
	    identifier.name =~ searchPattern
	} 
	List assetList = query.list()
	
	
	
	respond assetList, model:[assetInstanceCount: assetList.size()],view:"index"
    }
    def show(Asset assetInstance) {
	System.out.println("!!!assetInstance = " + assetInstance)
	List assetRelations = assetRelationService.findAssetRelations(assetInstance.identifier.name,assetInstance.identifier.ver)
	for (asset in assetRelations) {
	    System.out.println "ASSSET"+asset
	}
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
	respond new Asset(params)
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
