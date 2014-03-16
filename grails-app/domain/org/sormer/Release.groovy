package org.sormer

class Release {
    String name
    static belongsTo = Product

    Expert releaseManager
    
    static constraints = {
	releaseManager nullable:true 
    }
}
