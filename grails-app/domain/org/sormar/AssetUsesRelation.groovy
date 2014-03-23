package org.sormar

class AssetUsesRelation {
    static mapWith = "mongo"
    static belongsTo = [asset:Asset]
    Asset usesAsset
    static constraints = {
    }
}
