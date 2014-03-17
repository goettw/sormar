dataSource {
    pooled = true
    jmxExport = true
    driverClassName = "org.h2.Driver"
    username = "sa"
    password = ""
}
//hibernate {
 //   cache.use_second_level_cache = true
 //   cache.use_query_cache = false
 //   cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
    //    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
//    singleSession = true // configure OSIV singleSession mode
//}

// environment specific settings
environments {
    development {
	grails {
	mongo {
	    host = "localhost"
	    port = 27107
	    username = "blah"
	    password = "blah"
	    databaseName = "foo"
	}
	}

    }
    test {
//	dataSource {
//	    dbCreate = "update"
//	    url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
//	}
    }
    production {
	grails {
	mongo {
	    host = 'localhost'
	    port = 27107
	    databaseName = "sormar"
	    username = 'user'
	    password = 'password'
	}
	}
    }
}
