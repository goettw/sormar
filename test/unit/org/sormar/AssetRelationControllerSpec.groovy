package org.sormar



import grails.test.mixin.*
import spock.lang.*

@TestFor(AssetRelationController)
@Mock(AssetRelation)
class AssetRelationControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.assetRelationInstanceList
            model.assetRelationInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.assetRelationInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def assetRelation = new AssetRelation()
            assetRelation.validate()
            controller.save(assetRelation)

        then:"The create view is rendered again with the correct model"
            model.assetRelationInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            assetRelation = new AssetRelation(params)

            controller.save(assetRelation)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/assetRelation/show/1'
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
            def assetRelation = new AssetRelation(params)
            controller.show(assetRelation)

        then:"A model is populated containing the domain instance"
            model.assetRelationInstance == assetRelation
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def assetRelation = new AssetRelation(params)
            controller.edit(assetRelation)

        then:"A model is populated containing the domain instance"
            model.assetRelationInstance == assetRelation
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/assetRelation/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def assetRelation = new AssetRelation()
            assetRelation.validate()
            controller.update(assetRelation)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.assetRelationInstance == assetRelation

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            assetRelation = new AssetRelation(params).save(flush: true)
            controller.update(assetRelation)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/assetRelation/show/$assetRelation.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/assetRelation/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def assetRelation = new AssetRelation(params).save(flush: true)

        then:"It exists"
            AssetRelation.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(assetRelation)

        then:"The instance is deleted"
            AssetRelation.count() == 0
            response.redirectedUrl == '/assetRelation/index'
            flash.message != null
    }
}
