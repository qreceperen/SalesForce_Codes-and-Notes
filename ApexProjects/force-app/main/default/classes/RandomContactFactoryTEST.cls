@isTest
public with sharing class RandomContactFactoryTEST {
    @isTest static void createContact() {

        List<Contact> conList = RandomContactFactory.generateRandomContacts(1, 'EREN');

        Test.startTest();
        Database.SaveResult [] result = Database.insert(conList,false);
        Test.stopTest();

        List<Contact> allTestCon = [SELECT FirstName FROM Contact Where FirstName LIKE 'Test%'];
        

        system.assertEquals('Test0', allTestCon[0].FirstName);
        
    }
    @isTest static void createMultiContact() {

        List<Contact> conList = RandomContactFactory.generateRandomContacts(5, 'EREN');

        Test.startTest();
        Database.SaveResult [] result = Database.insert(conList,false);
        Test.stopTest();

        List<Contact> allTestCon = [SELECT FirstName FROM Contact Where FirstName LIKE 'Test%'];
        

        system.assertEquals(5, allTestCon.size());
        
    }
}
