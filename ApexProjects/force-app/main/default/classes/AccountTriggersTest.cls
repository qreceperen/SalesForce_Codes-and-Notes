@isTest 
public with sharing class AccountTriggersTest {
    @isTest 
    public static void addBillingState() {
        Account acc= new Account ();
        acc.Name = 'TEST-10 ' + 'Account Trigger';
        acc.BillingState = 'CV';
        insert acc;

        List<Account> accList = [SELECT Id,Name, ShippingState,BillingState FROM Account WHERE Name LIKE 'TEST-10%' LIMIT 1];

        System.assertEquals('CV', accList.Id);

    }
}
