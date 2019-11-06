package digilocker

import DigilockerSecurity.Role
import DigilockerSecurity.User
import DigilockerSecurity.UserRole

class BootStrap {

    def init = { servletContext ->
        def adminRole = new Role(authority: 'ROLE_ADMIN').save()
         def admin = new User(username: 'tushar' , password: '1234', enabled: true).save()
         
        UserRole.create admin, adminRole

            UserRole.withSession {
                it.flush()
                it.clear()
            }
            
    }
    def destroy = {
    }
}
