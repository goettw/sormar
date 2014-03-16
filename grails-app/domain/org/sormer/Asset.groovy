package org.sormer

class Asset {
    String name
    String link
    
    static constraints = {
	link url:true 
    }
}
