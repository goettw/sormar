import javax.management.relation.Role;

import org.sormar.AssetIdentifier;
import org.sormar.AssetRelation;

class BootStrap {

    def init = { servletContext ->
	
	org.sormar.User user = new org.sormar.User()
	user.username = "wgoette"
	user.password = "password"
	user.email = "contact@constonline.com"
	user.firstName= "Wolfgang"
	user.lastName="Götte"
	user.enabled = true
	user.accountExpired = false
	user.accountLocked = false
	user.passwordExpired = false
	user.validate();
	user.save(flush:true)
	
	org.sormar.Role userRole = new org.sormar.Role(authority:"ROLE_USER").save(flush:true)
	new org.sormar.UserRole(user: user, role: userRole).save(flush: true, insert: true);

	userRole = new org.sormar.Role(authority:"ROLE_ADMIN").save(flush:true)
	new org.sormar.UserRole(user: user, role: userRole).save(flush: true, insert: true);
    }
    def destroy = {
    }
}
