package Academics

import DigilockerSecurity.User


class StudentTenthScore {
     
    User user;
    String xBoard
    String xPassYear
    String xState
    double xPercent
    String xSchool
        Byte [] xMarksheet
    static constraints = {
        
        xBoard(nullable:false,blank:false)
        
        xPassYear(nullable:false,blank:false)
        
        xState(nullable:false,blank:false)
        
        xPercent(nullable:false,blank:false,min:0.0,max:100.0)
        
        xSchool(nullable:false,blank:false)
        
        xMarksheet(nullable:false,blank:false)
    }
}
