package DigilockerSecurity.demo

import Student.GenerateStudentCorrespondenceAddressService
import Student.GenerateStudentExtendedInformationService
import Student.GenerateStudentPermanentAddressService
import Student.StudentBasicInformation;
import Academics.*
import DigilockerSecurity.*
class StudentController {

    def springSecurityService
    def index() { 
        println ('hiiis')
        render 'hi'
             def user = springSecurityService.currentUser
             def value=StudentBasicInformation.findByUser(user)
      
        println(value.firstName)
     
    render view : 'Dashboard', model:[basicInfo:value,tenthScore:val1,twelveScore:val2]
}
def Dashboard(){
               
    }

    
def studentDetailsForm(){
       def user = springSecurityService.currentUser
       def value=StudentBasicInformation.findByUser(user)
       println(value.firstName)
        
        [basicInfo:value]
    }
   def viewUserProfile(){
       def user = springSecurityService.currentUser
       def val1=StudentTenthScore.findByUser(user)
       println(val1.xPercent)
       def val2=StudentTwelvthScore.findByUser(user)
       println(val2.xiiPercentage)
       [tenthScore:val1,twelveScore:val2]
    }
   
def studentDetails(){
}
def formvalue(){
    def currentUser = User.findByUsername(String.valueOf(params.rollNo));
    new GenerateStudentCorrespondenceAddressService().generateStudentCorrespondenceAddress(currentUser,params);
    new GenerateStudentExtendedInformationService().generateStudentExtendedInformation(currentUser,params);
    new GenerateStudentPermanentAddressService().generateStudentPermanentAddress(currentUser,params);
    
    redirect(action: 'Dashboard')
    }
def logout(){
    redirect (action : 'login')
}
def login() {
}
def studentNavbar() {
    
}
def save(){
    render params;
    redirect (action : 'Dashboard')
}
}
