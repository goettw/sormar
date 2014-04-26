package org.sormar

import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.userdetails.GrailsUser;
import grails.plugin.springsecurity.userdetails.GrailsUserDetailsService

import org.apache.log4j.Logger
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.authority.GrantedAuthorityImpl
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.core.userdetails.UsernameNotFoundException;

class MongoUserDetailsService implements GrailsUserDetailsService {

    private Logger log = Logger.getLogger(getClass())

    /**
     * Some Spring Security classes (e.g. RoleHierarchyVoter) expect at least one role, so
     * we give a user with no granted roles this one which gets past that restriction but
     * doesn't grant anything.
     */
    static final List NO_ROLES = [
	new GrantedAuthorityImpl(SpringSecurityUtils.NO_ROLE)
    ]

    @Override
    UserDetails loadUserByUsername(String username, boolean loadRoles) throws UsernameNotFoundException, DataAccessException {
	if(log.debugEnabled) {
	    log.debug("Attempted user logon: $username")
	}
	User.withTransaction{ status ->
	    def user = User.findByUsername(username)

	    if (!user) {
		log.warn("User not found: $username")
		throw new UsernameNotFoundException('User not found', username)
	    }

	    if(log.debugEnabled) {
		log.debug("User found: $username")
	    }

	    def roles = NO_ROLES
	    if (loadRoles) {
		def authorities = user.authorities?.collect
		{new GrantedAuthorityImpl(it.authority)}
		if(authorities) {
		    roles = authorities
		}
	    }

	    if(log.debugEnabled) {
		log.debug("User roles: $roles")
	    }

	    return createUserDetails(user, roles)
	}
    }

    @Override
    UserDetails loadUserByUsername(String username) {
	return loadUserByUsername(username, true)
    }

    protected UserDetails createUserDetails(User user, Collection authorities) {
	new GrailsUser(user.username, user.password, user.enabled,
		!user.accountExpired, !user.passwordExpired,
		!user.accountLocked, authorities, user.id)
    }
}
