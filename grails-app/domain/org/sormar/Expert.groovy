package org.sormar

class Expert {
    String username
    String firstName
    String lastName
    
    static mapWith = "mongo"
    static constraints = { username unique:true  }
    def encodeAsHTML () {
	return firstName + " " + lastName + " " + username
    }
    def String toString (){
	return encodeAsHTML()
    }
    
    def getLabel () {return toString()}
    def getListSubLabel () {return username}
}
