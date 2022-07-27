@isTest 
public with sharing class TestAccountDeletion {
    @isTest 
    static void TestDeleteAccountWithOneOpportunity() {

        // Create Account with Opportunity

        Account acct = new Account();
        acct.Name = 'Test Account';
        insert acct;

        Opportunity opp = new Opportunity();
        opp.Name = acct.Name;
        opp.StageName = 'Prospecting';
        opp.CloseDate = System.today().addMonths(1);
        opp.AccountId = acct.id;
        insert opp;

        // Perform Test

        Test.startTest();
        Database.DeleteResult result = Database.delete(acct,false);
        Test.stopTest();

        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size()>0);
        System.assertEquals('Cannot delete account with related opportunities.', result.getErrors()[0].getMessage());
    }
}
