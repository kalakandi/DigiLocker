package Student


class GenerateStudentCompositeInformationService {
    
    StudentCompositeInformation studentCompositeInformation;

    def serviceMethod() {

    }
    
    def generateStudentCompositeInformation(def rollNo){
        
        studentCompositeInformation = new StudentCompositeInformation();
        studentCompositeInformation.setRollNo(rollNo);
        studentCompositeInformation.setPassword('12345');
        studentCompositeInformation.setStatus(true)
        studentCompositeInformation.save(flush:true);
    }
    
    
    
}
