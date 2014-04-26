package org.sormar




class AssetRelation {
    static mapWith = "mongo"
   
    AssetIdentifier source
    AssetIdentifier target
    
    static embedded = [
	'source',
	'target',
	'agreement'
    ]
    String type
    Agreement agreement = new Agreement ()
    
    
    
 
    def String toString () {
	return ( (source == null ? "":source.toString()) + " " + (type == null ? "" : type)  + " " + (target == null ? "" : target.toString()) )}
    def getLabel () {return toString()}
    def getListSubLabel () {return agreement}

    static constraints = {
	type inList:["uses", "needs"]}
}
