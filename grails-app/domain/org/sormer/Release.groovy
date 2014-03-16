package org.sormer

class Release {
    String name
    static belongsTo = Product

    Person releaseManager
    
    static constraints = {
	releaseManager nullable:true 
    }
}
