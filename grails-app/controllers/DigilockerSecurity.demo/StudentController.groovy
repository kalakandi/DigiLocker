package DigilockerSecurity.demo

import Student.GenerateStudentCorrespondenceAddressService
import Student.GenerateStudentExtendedInformationService
import Student.GenerateStudentPermanentAddressService
import Student.StudentBasicInformation;

import DigilockerSecurity.*
class StudentController {

    def springSecurityService
    def index() { 
       def user = springSecurityService.currentUser
       def value=StudentBasicInformation.findByUser(user)
       println(value.firstName)
    render view : 'Dashboard', model:[basicInfo:value]
}
def Dashboard(){
               
    }
    
def studentDetailsForm(){
       def user = springSecurityService.currentUser
       def value=StudentBasicInformation.findByUser(user)
       println(value.firstName)
        
        [basicInfo:value]
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
