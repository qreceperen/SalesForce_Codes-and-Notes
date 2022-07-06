@isTest
public class CreateOppfromAcc_Test {
    @isTest
    public static void test_afterUpdate_positive() {
        
        Account newAcc = new Account();
        newAcc.Name = 'APEX Test Account';
        newAcc.Industry = 'Education';
        insert newAcc;
        List<Opportunity> insertedOpp = [Select Id, Account.Name, CloseDate, Amount 
                                         From Opportunity Where AccountId = :newAcc.Id];
        System.assertEquals(0, insertedOpp.size(), '0 opportunity should be inserted for the Account');
        
        newAcc.Industry = 'Agriculture';
        update newAcc;
        List<Opportunity> newinsertedOpp = [Select Id, Account.Name, CloseDate, Amount 
                                         From Opportunity Where AccountId = :newAcc.Id];
        System.assertEquals(1, newInsertedOpp.size(), 'Only 1 opportunity should be inserted for the Account');
        System.assertEquals(newAcc.Name, newInsertedOpp[0].Account.Name, 'Inserted Opportunity does not have the expected account.');
        System.assertEquals(System.today() + 90, newInsertedOpp[0].CloseDate, 'Close Date is not as expected.');
        System.assertEquals(0, newInsertedOpp[0].Amount, 'Amount in the inserted opportunity should be 0');
        
   
    }
    
}