package org.sormer

class Asset {
    String name
    String link
    String type
    String version
    static mapWith = "mongo"
   // Asset [] uses
    static constraints = {
	name nullable:false
	version nullable:false
	link url:true 
	type inList:["framework", "runtime", "database"] 
    }
    
}
