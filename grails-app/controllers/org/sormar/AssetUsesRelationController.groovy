package org.sormar



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AssetUsesRelationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AssetUsesRelation.list(params), model:[assetUsesRelationInstanceCount: AssetUsesRelation.count()]
    }

    def show(AssetUsesRelation assetUsesRelationInstance) {
        respond assetUsesRelationInstance
    }

    def create() {
        respond new AssetUsesRelation(params)
    }

    @Transactional
    def save(AssetUsesRelation assetUsesRelationInstance) {
        if (assetUsesRelationInstance == null) {
            notFound()
            return
        }

        if (assetUsesRelationInstance.hasErrors()) {
            respond assetUsesRelationInstance.errors, view:'create'
            return
        }

        assetUsesRelationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'assetUsesRelationInstance.label', default: 'AssetUsesRelation'), assetUsesRelationInstance.id])
                redirect assetUsesRelationInstance
            }
            '*' { respond assetUsesRelationInstance, [status: CREATED] }
        }
    }

    def edit(AssetUsesRelation assetUsesRelationInstance) {
        respond assetUsesRelationInstance
    }

    @Transactional
    def update(AssetUsesRelation assetUsesRelationInstance) {
        if (assetUsesRelationInstance == null) {
            notFound()
            return
        }

        if (assetUsesRelationInstance.hasErrors()) {
            respond assetUsesRelationInstance.errors, view:'edit'
            return
        }

        assetUsesRelationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AssetUsesRelation.label', default: 'AssetUsesRelation'), assetUsesRelationInstance.id])
                redirect assetUsesRelationInstance
            }
            '*'{ respond assetUsesRelationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AssetUsesRelation assetUsesRelationInstance) {

        if (assetUsesRelationInstance == null) {
            notFound()
            return
        }

        assetUsesRelationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AssetUsesRelation.label', default: 'AssetUsesRelation'), assetUsesRelationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'assetUsesRelationInstance.label', default: 'AssetUsesRelation'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
