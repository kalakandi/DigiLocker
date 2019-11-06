package Academics

import Student.StudentCompositeInformation

class StudentDiplomaScore {

     StudentCompositeInformation studentCompositeInformation;
    double diplomaPercent
    String diplomaUniversity
    String diplomaBranch
    String diplomaPassYear
    String diplomaState
       Byte [] diplomaMarksheet 
    static constraints = {
        
        diplomaPercent(nullable:false,blank:false,min: 0.0, max: 100.0)
        
        diplomaUniversity(nullable:false,blank:false)
        
        diplomaBranch(nullable:false,blank:false)
        
        diplomaPassYear(nullable:false,blank:false)
        
        diplomaState(nullable:false,blank:false)
        
        diplomaMarksheet(nullable:false,blank:false)
    }
}
