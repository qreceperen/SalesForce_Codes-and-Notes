@isTest
public class CreateOppFromAcc_Test {
    //Create Data
    @isTest
    public static void createAccTest1(){
    Account newAcc = new Account();
    newAcc.Name = 'APEX Test Account';
    newAcc.Industry = 'Agriculture';
    insert newAcc;
        
    

    // Call Data 
    List<Opportunity> insertedOpp = [SELECT Id, Account.Name, CloseDate,Amount FROM Opportunity WHERE AccountId = :newAcc.Id];
    
    // Test The Data
    
    system.assertEquals(1, insertedOpp.size(), 'Only 1 opportunity should be inserted for the Account');
    system.assertEquals(newAcc.Name, insertedOpp[0].Account.Name, 'Inserted Opportunity does not have the expected account.');
        
    }
    
    
    
}