package Academics

import DigilockerSecurity.User

class StudentTwelvthScore {

    User user;
    String xiiBoard
    String xiiPassYear
    String xiiState
    double xiiPercentage
    String xiiSchool
    double xiiEnglish
     Byte [] xiiMarksheet
    static constraints = {
        
        xiiEnglsh(nullable:false,blank:false,min:0.0,max:100.0)
        
        xiiBoard(nullable:false,blank:false)
        
        xiiPassYear(nullable:false,blank:false)
        
        xiiState(nullable:false,blank:false)
        
        xiiPercentage(nullable:false,blank:false,min:0.0,max:100.0)
        
        xiiSchool(nullable:false,blank:false)
        
        xiiMarksheet(nullable:false,blank:false)
    }
}
