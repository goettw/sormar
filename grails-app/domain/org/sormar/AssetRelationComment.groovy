package org.sormar

class AssetRelationComment {
    static mapWith = "mongo"
    
    static belongsTo = [expert: Expert]
    AssetRelation assetRelation
    String comment
    boolean agree
    Date dateCreated, lastUpdated
    static embedded = ['assetRelation']
    static constraints = {
	
    }
}
