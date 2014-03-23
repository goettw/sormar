package org.sormar

class Release {
    String name
    static belongsTo = Product

    Expert releaseManager
    static mapWith = "mongo"
    static constraints = {
	releaseManager nullable:true 
    }
}
