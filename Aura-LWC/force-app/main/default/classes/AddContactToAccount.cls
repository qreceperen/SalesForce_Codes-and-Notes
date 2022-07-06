@isTest
public class AddContactToAccount {
    
    @isTest
    public static void ContactList(){
        Account acct = new Account();
        acct.Name = 'Test Account';
        insert acct;
        
        Contact c = [SELECT LastName FROM Contact];
        System.assertEquals('Test Account', c.LastName);
   
    }

}