package Student

class StudentBasicInformation {

    StudentCompositeInformation studentCompositeInformation;
    String firstName;
    String lastName;
    String dateOfBirth;
    String phoneNo;
    String email;
    String branch;
    String joiningYear;
    
    static constraints = {
        
        firstName nullable: false, blank: false
        lastName nullable: false, blank: false
        dateOfBirth nullable: false, blank: false
        phoneNo nullable: false, blank: false
        email email: true, blank: false
        branch nullable: false, blank: false
        joiningYear nullable: false, blank: false
        
    }
}
