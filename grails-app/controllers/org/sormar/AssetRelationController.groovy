package org.sormar



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AssetRelationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AssetRelation.list(params), model:[assetRelationInstanceCount: AssetRelation.count()]
    }

    def show(AssetRelation assetRelationInstance) {
        respond assetRelationInstance
    }

    def create() {
        respond new AssetRelation(params)
    }

    @Transactional
    def save(AssetRelation assetRelationInstance) {
        if (assetRelationInstance == null) {
            notFound()
            return
        }

        if (assetRelationInstance.hasErrors()) {
            respond assetRelationInstance.errors, view:'create'
            return
        }

        assetRelationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'assetRelationInstance.label', default: 'AssetRelation'), assetRelationInstance.id])
                redirect assetRelationInstance
            }
            '*' { respond assetRelationInstance, [status: CREATED] }
        }
    }

    def edit(AssetRelation assetRelationInstance) {
        respond assetRelationInstance
    }

    @Transactional
    def update(AssetRelation assetRelationInstance) {
        if (assetRelationInstance == null) {
            notFound()
            return
        }

        if (assetRelationInstance.hasErrors()) {
            respond assetRelationInstance.errors, view:'edit'
            return
        }

        assetRelationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AssetRelation.label', default: 'AssetRelation'), assetRelationInstance.id])
                redirect assetRelationInstance
            }
            '*'{ respond assetRelationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AssetRelation assetRelationInstance) {

        if (assetRelationInstance == null) {
            notFound()
            return
        }

        assetRelationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AssetRelation.label', default: 'AssetRelation'), assetRelationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'assetRelationInstance.label', default: 'AssetRelation'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
