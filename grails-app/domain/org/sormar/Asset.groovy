package org.sormar

import java.util.Date;

class Asset {
    static mapWith = "mongo"
    AssetIdentifier identifier = new AssetIdentifier()
    static embedded = ["identifier"]
    String source
    String deployable
    String documentation
    Date dateCreated, lastUpdated
    String type
    def getLabel () {return toString()}
    def getListSubLabel () {return type}
    def String toString () {identifier}
    
    
   // Asset [] uses
    static constraints = {
	identifier nullable:false

	source nullable:true,url:true
	deployable nullable:true,url:true
	documentation nullable:true,url:true
	 
	type inList:["Platform Service", "Technology Component","Application Compnent","Data Entity"] 
    }
    
}
