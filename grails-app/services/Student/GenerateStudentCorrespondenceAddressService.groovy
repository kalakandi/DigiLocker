package Student


class GenerateStudentCorrespondenceAddressService {

    StudentCorrespondenceAddress studentCorrespondenceAddress;
    
    def serviceMethod() {

    }
    def generateStudentCorrespondenceAddress(StudentCompositeInformation studentCompositeInformation,def params){
        
        studentCorrespondenceAddress = new StudentCorrespondenceAddress();
        studentCorrespondenceAddress.studentCompositeInformation=studentCompositeInformation;            //reference been created for the existing user
        setValues(params);
        studentCorrespondenceAddress.save();
        
    }
    
    private def setValues(def params){
        studentCorrespondenceAddress.setFlatNo(params.correspondenceAddress);
        studentCorrespondenceAddress.setCity(params.correspondenceCity);
        studentCorrespondenceAddress.setDistrict(params.correspondenceDistrict);
        studentCorrespondenceAddress.setState(params.correspondenceState);
        studentCorrespondenceAddress.setPincode(params.correspondencePinCode);
        
    }
}
