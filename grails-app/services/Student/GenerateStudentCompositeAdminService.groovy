package Student


class GenerateStudentCompositeAdminService {
    StudentCompositeInformation studentCompositeInformation;
    def serviceMethod() {
        
    }
    GenerateStudentCompositeAdminService(def params){
        generateStudentCompositeAdmin(params);
    }
    
    private def generateStudentCompositeAdmin(def params){
        GenerateStudentCompositeInformationService generateStudentCompositeInformationService=new GenerateStudentCompositeInformationService();
        generateStudentCompositeInformationService.generateStudentCompositeInformation(params.rollNo);
        GenerateStudentBasicInformationService generateStudentBasicInformationService=new GenerateStudentBasicInformationService();
        generateStudentBasicInformationService.generateStudentBasicInformation(params);
        
        
        /* if(studentCompositeInformation.save(flush:true))
            println 'done'
            else 
            print 'not done'
         */
        
    }
    
}
