package org.sormar

import org.grails.datastore.mapping.validation.ValidationException;

import grails.orm.HibernateCriteriaBuilder;
import grails.transaction.Transactional

@Transactional
class AssetRelationService {

    def List findAssetRelations (String serviceName, String ver) {
	
	AssetIdentifier assetIdentifierSample = new AssetIdentifier(name : serviceName, ver : ver)

	def query = AssetRelation.where {
	    (source.name == serviceName && source.ver == ver) || (target.name == serviceName && target.ver == ver) 
	}
	return query.findAll()
    }


    def AssetRelation findOrCreate (AssetIdentifier sourceVar, AssetIdentifier targetVar, String typeVar) {
	def query = AssetRelation.where {
	    (source.name == sourceVar.name && source.ver == sourceVar.ver && target.name == targetVar.name && target.ver == targetVar.ver && type == typeVar)
	}
	AssetRelation assetRelation = query.find()
	if (assetRelation == null) {
	    assetRelation = new AssetRelation(source: sourceVar, target: targetVar, type: typeVar)
	    assetRelation.save()
	}
	return assetRelation
    }

    def Integer countAssetRelationComments (AssetRelation assetRelationVar, boolean agreeVar) {
	def query = AssetRelationComment.where {
	    (assetRelation.source.name == assetRelationVar.source.name 
		&& assetRelation.source.ver == assetRelationVar.source.ver 
		&& assetRelation.target.name == assetRelationVar.target.name 
		&& assetRelation.target.ver == assetRelationVar.target.ver 
		&& assetRelation.type == assetRelationVar.type 
		&& agree == agreeVar)
	}
	return query.count()

    }
     /* Adds or changes a comment to an asset relation for an expert. Agree/disagree fields in AssetRelation are changed accordingly.
      */   
     def AssetRelationComment commentAssetRelation (AssetRelation assetRelation, boolean agree, Expert expert, String comment) {


	AssetRelationComment assetRelationComment = AssetRelationComment.findByAssetRelationAndExpert (assetRelation, expert)
	if (assetRelationComment == null)
	    assetRelationComment = new AssetRelationComment(assetRelation : assetRelation, expert : expert, comment : comment, agree: agree)
	else {
	    assetRelationComment.expert= expert
	    assetRelationComment.comment = comment
	}
	assetRelationComment.save(flush:true)


	System.out.println (assetRelation.source.toString() + "-" + assetRelation.target.toString() + "-" + assetRelation.type)

	assetRelation = findOrCreate(assetRelation.source, assetRelation.target, assetRelation.type)
	
	assetRelation.setAgreement(new Agreement(agree:countAssetRelationComments (assetRelation, true),disagree:countAssetRelationComments (assetRelation, false)))
	try {
	    assetRelation.save(failOnError: true)
	}
	catch (ValidationException e) {
	    e.printStackTrace(System.out);
	}
	return assetRelationComment
    }



    def List emptyAssetRelations () {
	//AssetRelation.collection.dr()
    }
}
