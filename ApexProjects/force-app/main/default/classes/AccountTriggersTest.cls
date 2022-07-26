@isTest 
public with sharing class AccountTriggersTest {
    @isTest 
    public static void addBillingState() {
        Account acc= new Account ();
        acc.Name = 'TEST-10 ' + 'Account Trigger';
        acc.BillingState = 'CV';
        insert acc;

        System.assertEquals('CV', acc.ShippingState);

    }
}
