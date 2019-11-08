package TnP

class TnPInformation {
    
    Long phoneNo;
    String tnPId;
    String password;
    String email;
    String name;

    static constraints = {
        
         phoneNo nullable: false, blank: false, minSize:10, maxSize:13
         tnPId nullable: false, blank: false
         password nullable: false, blank: false, password: true
         email email: true, blank: false
         name nullable: false, blank: false
    }
}
