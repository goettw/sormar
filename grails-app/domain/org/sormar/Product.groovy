package org.sormar

import java.nio.MappedByteBuffer;

class Product {
    static mapWith = "mongo"
    String name
    String url
    Expert productManager

    def encodeAsHTML() {return name}
    def getLabel () {return name}
    def getListSubLabel () {return productManager}
    static constraints = {
	name unique:true 
	productManager nullable:true 
	url nullable:true
    }
}
