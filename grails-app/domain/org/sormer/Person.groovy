package org.sormer

class Person {
    String username
    String firstName
    String lastName
    //static hasMany = [managesProducts:Product , managesReleases:Release]
    static mappedBy = [managesProducts : 'productManager', managesReleases : 'releaseManager']
    static constraints = {
	username unique:true 
	
    }
}
