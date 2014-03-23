package org.sormar

class Asset {
    String name
    String source
    String deployable
    String documentation
    
    String type
    def getLabel () {return toString()}
    def getListSubLabel () {return type}
    def String toString () {name}
    static mapWith = "mongo"
    
   // Asset [] uses
    static constraints = {
	name nullable:false

	source nullable:true,url:true
	deployable nullable:true,url:true
	documentation nullable:true,url:true
	 
	type inList:["framework", "service","language",""] 
    }
    
}
