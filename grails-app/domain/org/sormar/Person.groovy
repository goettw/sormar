package org.sormar

class Person {
    String username
    String firstName
    String lastName
    static constraints = {
	username unique:true 
	
    }
}
