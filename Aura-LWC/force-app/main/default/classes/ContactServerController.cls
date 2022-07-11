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

    @AuraEnabled
    public static list<Contact> retrieveContactServerController(){
        List<Contact> multiContact = new List<contact>();
        try {
            multiContact = [SELECT id,FirstName,LastName,Phone,Email,CreatedDate FROM Contact ORDER BY CreatedDate DESC LIMIT 10];

            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
        return multiContact;
    }
}
