public with sharing class AURAContactWlistServerController {
    public AURAContactWlistServerController() {

    }

    @AuraEnabled
    public static string CreateServerController(Contact singleContact){
        try {
            insert singleContact;
            
        } catch (DmlException e) {
            throw new AuraHandledException(e.getMessage());
        }
        return singleContact.id;
    }

    @AuraEnabled
    public static List<Contact> retrieveContactServerController(){
        List<Contact> multiContact = New List<Contact>();
        try {

            multiContact = [SELECT Id,Name,FirstName,LastName,Phone,Email,CreatedDate
                            FROM Contact
                            ORDER BY CreatedDate DESC
                            LIMIT 10 ];
            
        } catch (QueryException e) {
            throw new AuraHandledException(e.getMessage());
        }
        return multiContact;
    }
}
