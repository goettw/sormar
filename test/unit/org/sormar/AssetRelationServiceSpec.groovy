

package org.sormar

import grails.test.mixin.*
import spock.lang.Specification


/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(AssetRelationService)
@Mock (AssetRelation)

class AssetRelationServiceSpec extends Specification {

    def setup() {
	
	}

    def cleanup() {
    }

    void "test find"() {
	when: "find is called"
	List list = service.findAssetRelations("Grails")
	then:"asset relations are returned"
	list != null
	list.size() == 1
	
    }
}
