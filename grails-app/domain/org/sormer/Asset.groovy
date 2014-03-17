package org.sormer

class Asset {
    String name
    String link
    String type
    static mapWith = "mongo"
    
    static constraints = {
	name unique:true
	link url:true 
	type inList: ["framework", "runtime", "database"] 
    }
}
