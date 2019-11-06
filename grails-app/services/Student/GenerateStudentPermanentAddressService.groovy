package Student


class GenerateStudentPermanentAddressService {
    StudentPermanentAddress studentPermanentAddress;

    def serviceMethod() {

    }
    
    def generateStudentPermanentAddress(StudentCompositeInformation studentCompositeInformation,def params){
        
        studentPermanentAddress = new StudentPermanentAddress();
        studentPermanentAddress.studentCompositeInformation=studentCompositeInformation;        //reference been created for the existing user
        setValue(params);
        studentPermanentAddress.save();
        
    }
    
    private def setValues(def params){
        
        studentPermanentAddress.setFlatNo(params.permanentAddress);
        studentPermanentAddress.setCity(params.permanentCity);
        studentPermanentAddress.setDistrict(params.permanentDistrict);
        studentPermanentAddress.setState(params.permanentState);
        studentPermanentAddress.setPincode(params.permanentPinCode);
        
    }
}
