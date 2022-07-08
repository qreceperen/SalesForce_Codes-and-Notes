public with sharing class ContactServerController {
    public ContactServerController() {

        // constructor

    }
    @AuraEnabled
    public static string createServerController(Contact singleContact){
        try {
            insert singleContact;
            
        } catch (DmlException e) {
            throw new AuraHandledException(e.getMessage());
        }
        return singleContact.id;
    }
}
