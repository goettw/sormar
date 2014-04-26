package org.sormar

class AssetIdentifier {
    static mapWith = "mongo"
    String name
    String ver
    def String toString () {
	return name+"/"+ver
    }
   // String primarykey = name+"+++"+version
  
}
