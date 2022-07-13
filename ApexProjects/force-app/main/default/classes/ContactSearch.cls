public with sharing class ContactSearch {
    public  List<Contact> searchForContacts(String LastName , String MailingPostalCode) {

       List<Contact> retList=  [SELECT id, Name FROM CONTACT WHERE LastName=:LastName AND MailingPostalCode=:MailingPostalCode ];
       return retList;
        

    }
}
