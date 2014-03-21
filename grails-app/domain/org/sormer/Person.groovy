package org.sormer

class Person {
    String username
    String firstName
    String lastName
    static constraints = {
	username unique:true 
	
    }
}
