package org.sormer

import java.nio.MappedByteBuffer;

class Product {
    String name
    String url
    Expert productManager
    static hasMany = [releases: Release]
    static mappedBy = [release : '']
    static mapWith = "mongo"
    def encodeAsHTML() {return name}
    
    static constraints = {
	name unique:true 
	productManager nullable:true 
	url nullable:true
    }
}
