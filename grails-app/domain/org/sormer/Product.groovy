package org.sormer

import java.nio.MappedByteBuffer;

class Product {
    String name
    String url
    static hasMany = [releases: Release]
    static mappedBy = [release : '']
    
    Person productManager
    
    static constraints = {
	productManager nullable:true 
    }
}
