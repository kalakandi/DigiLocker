package Student

class StudentCompositeInformation {

    String rollNo;
    String password;
    Boolean status= false;
    
    static constraints = {
        rollNo nullable: false, blank: false, maxSize:10, minSize:10
        password nullable: false, blank: false, password: true
        
    }
}

