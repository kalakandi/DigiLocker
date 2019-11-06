package digilocker

import Student.GenerateStudentCompositeAdminService

class AdminController {

    def index() {
    redirect (action : 'Dashboard')}
def Dashboard(){
               
    }
def uploadStudentFile(){
}
def submitStudentBasicInformation(){
   def value =['rollNo':'00', 'firstName':'Prateek', 'lastName':'Kumar', 'dateOfBirth':'01/07/1997', 'studentContact':'9650470421', 'studentEmail':'Kprateek155@gmail.com', 'branch':'Cse', 'joiningYear':'2019']
    
    int length =params.rollNo.length;
    for(int i=0;i<length;i++){
        value.rollNo=params.rollNo[i];
            value.firstName=params.firstName[i];
              value.lastName=params.lastName[i];
                value.dateOfBirth=params.dateOfBirth[i];
                  value.studentContact=params.studentContact[i];
                    value.studentEmail=params.studentEmail[i];
                        value.branch=params.branch[i];
                            value.joiningYear=params.joiningYear[i];
        
            new GenerateStudentCompositeAdminService(value);
            
    }
    
    render value;
}
def modifyStudentDetails(){
    
}
def uploadTnPfile(){
    
}
}
