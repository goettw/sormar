package org.sormar



import org.codehaus.groovy.runtime.powerassert.AssertionRenderer;
import org.grails.datastore.gorm.finders.FindOrCreateByFinder;

import spock.lang.*

/**
 *
 */
class AssetRelationServiceIntegrationSpec extends Specification {
    def AssetRelationService assetRelationService
    ExpertService expertService
    AssetIdentifier standardSource = new AssetIdentifier(name:"Grails", ver:"1.0")
    AssetIdentifier standardTarget = new AssetIdentifier(name:"Rails", ver:"1.1")
    String standardType = "uses"
    def setup() {
	//assetRelationService.emptyAssetRelations()
	
	AssetRelation assetRelation = assetRelationService.findOrCreate (standardSource, standardTarget, standardType)
System.out.println("setup:" + assetRelation)


	try {
	    assetRelation.save(flush:true)
	} catch (Exception e) {
	    e.printStackTrace()
	}
    }

    def cleanup() {
	//assetRelationService.emptyAssetRelations()
    }

    void "test that the test data is there"() {
	when: "find is called with Grails"
	List list = assetRelationService.findAssetRelations("Grails","1.0")
	then:"asset relations are returned"
	list != null
	list.size() >= 1
    }

    void "test an expert writes a comment and agrees"() {
	int agree,disagree
	Random random = new Random()
	String comment = random.toString();
	
	when: "expert writes a comment"
		AssetRelation assetRelation = assetRelationService.findOrCreate (standardSource, standardTarget, standardType)
		agree = assetRelation.agreement.agree
		disagree = assetRelation.agreement.disagree
	
		Expert expert = expertService.findOrCreate("wgoette")
		expert.firstName = "Wolfgang"
		expert.lastName = "Goette"
		expert.save()
		assetRelationService.commentAssetRelation(assetRelation, true 	, expert, comment)
		assetRelation = assetRelationService.findOrCreate (standardSource, standardTarget, standardType)
	then: "comment can be found in database"
		AssetRelationComment assetRelationComment = AssetRelationComment.findByAssetRelationAndExpert (assetRelation, expert)
		assetRelationComment.comment == comment
		
	
    }
}
