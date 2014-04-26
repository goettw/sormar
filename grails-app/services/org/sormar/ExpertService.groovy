package org.sormar

import grails.transaction.Transactional

@Transactional
class ExpertService {

    def Expert findOrCreate(String username) {
	Expert expert
	def query = Expert.where {
	    "username" == username 
	}
	expert = query.find()
	if (expert == null) {
	    expert = new Expert (username : username)
	}
	return expert
    }
}
