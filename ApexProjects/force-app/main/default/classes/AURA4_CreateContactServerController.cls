public with sharing class AURA4_CreateContactServerController {
   
    

    @AuraEnabled
    public static string CreateContact(Contact singleContact ){
        try {
            insert singleContact;
            
        } catch (DmlException e) {
            // system.System.debug('ERROR :'+e.getMessage());
            throw new AuraHandledException(e.getMessage());
            
        }


        

        return singleContact.id;

    }
}