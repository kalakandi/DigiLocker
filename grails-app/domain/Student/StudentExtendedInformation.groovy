package Student

class StudentExtendedInformation {
    StudentCompositeInformation studentCompositeInformation;    
    String fatherName;
    String motherName;
    String contactNumber;
    String gender;
    
    static constraints = {
        
        fatherName nullable: false, blank: false
        motherName nullable: false, blank: false
        contactNumber nullable: false, blank: false, minSize:10, maxSize:13
        gender nullable: false, blank: false
        
    }
}