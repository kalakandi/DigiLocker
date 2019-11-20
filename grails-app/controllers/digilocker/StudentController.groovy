package Digilocker

import Student.GenerateStudentCorrespondenceAddressService
import Student.GenerateStudentExtendedInformationService
import Student.GenerateStudentPermanentAddressService

import DigilockerSecurity.*
class StudentController {

    def index() { 
    redirect (action : 'Dashboard')
}
def Dashboard(){
    }
    
def studentDetailsForm(){
    }
    
def studentDetails(){
}
def formvalue(){
    def currentUser = User.findByUsername('1703010225');
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

def save(){
    render params;
    redirect (action : 'Dashboard')
}
def studentFormView(){
    
}
}
