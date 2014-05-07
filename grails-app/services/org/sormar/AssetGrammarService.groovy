package org.sormar

import org.codehaus.groovy.grails.commons.GrailsApplication;

class AssetGrammarService {
  
    	def entityTypes (GrailsApplication grailsApplication) {
	    return grailsApplication.config.grammer.asset.entities
	}
    
     	def validTargetTypes (GrailsApplication grailsApplication, String sourceType) {	     
	     ConfigObject relations = grailsApplication.config.grammer.asset.relations     
	     ConfigObject relation = relations.get(sourceType)
	     return relation.keySet()
	 }
	 
	 def relationName (GrailsApplication grailsApplication, String sourceType, String targetType) {
	     return grailsApplication.config.grammer.asset.relations.get(sourceType).get(targetType).keySet()
	 }
}
