@isTest
public class Ownership_Test{
    @isTest 
    public static void ownershipMethod_Test(){

        // create Account Data

        Account acc = new Account (Name='Test Account',Industry='Banking');
        Account accNegative = new Account(Name = 'Not Match', Industry = 'Education');

        // execute database save
        insert acc;
        insert accNegative;
    
        // check data from the database
        Account acc1 = [SELECT Ownership FROM Account WHERE Id = :acc.Id ];
        Account acc2 = [SELECT Ownership FROM Account WHERE Id = :accNegative.Id ];


        System.assertEquals('Private', acc1.Ownership,'Ownership does not Matching');
        System.assertEquals(null, acc2.Ownership,'Ownership does not Matching');
    }
 
}