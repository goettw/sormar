package org.sormer

class Expert {
    String username
    String firstName
    String lastName
    static mapWith = "mongo"
    static hasMany = [managesProducts:Product , managesReleases:Release]
    static mappedBy = [managesProducts : 'productManager', managesReleases : 'releaseManager']
    static constraints = {
	username unique:true 
    }
}
