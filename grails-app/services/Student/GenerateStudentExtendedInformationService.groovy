package Student


class GenerateStudentExtendedInformationService {
    
    StudentExtendedInformation studentExtendedInformation;

    def serviceMethod() {

    }
    
    def generateStudentExtendedInformation(StudentCompositeInformation studentCompositeInformation,def params){
        
        studentExtendedInformation = new StudentExtendedInformation();
        studentExtendedInformation.studentCompositeInformation=studentCompositeInformation;          //reference been created for the existing user
        setValues(params);
        studentExtendedInformation.save();
        
    }
    private def setValues(def params){
        
        studentExtendedInformation.setFatherName(params.fatherName);
        studentExtendedInformation.setMotherName(params.motherName);
        studentExtendedInformation.setContactNumber(params.parentContact);
        studentExtendedInformation.setGender(params.studentGender);
        
    }
}
