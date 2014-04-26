package org.sormar



import grails.test.mixin.*
import spock.lang.*

@TestFor(AssetRelationController)
@Mock(AssetRelation)
class AssetUsesRelationControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.assetUsesRelationInstanceList
            model.assetUsesRelationInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.assetUsesRelationInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def assetUsesRelation = new AssetRelation()
            assetUsesRelation.validate()
            controller.save(assetUsesRelation)

        then:"The create view is rendered again with the correct model"
            model.assetUsesRelationInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            assetUsesRelation = new AssetRelation(params)

            controller.save(assetUsesRelation)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/assetUsesRelation/show/1'
            controller.flash.message != null
            AssetRelation.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def assetUsesRelation = new AssetRelation(params)
            controller.show(assetUsesRelation)

        then:"A model is populated containing the domain instance"
            model.assetUsesRelationInstance == assetUsesRelation
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def assetUsesRelation = new AssetRelation(params)
            controller.edit(assetUsesRelation)

        then:"A model is populated containing the domain instance"
            model.assetUsesRelationInstance == assetUsesRelation
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/assetUsesRelation/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def assetUsesRelation = new AssetRelation()
            assetUsesRelation.validate()
            controller.update(assetUsesRelation)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.assetUsesRelationInstance == assetUsesRelation

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            assetUsesRelation = new AssetRelation(params).save(flush: true)
            controller.update(assetUsesRelation)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/assetUsesRelation/show/$assetUsesRelation.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/assetUsesRelation/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def assetUsesRelation = new AssetRelation(params).save(flush: true)

        then:"It exists"
            AssetRelation.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(assetUsesRelation)

        then:"The instance is deleted"
            AssetRelation.count() == 0
            response.redirectedUrl == '/assetUsesRelation/index'
            flash.message != null
    }
}
