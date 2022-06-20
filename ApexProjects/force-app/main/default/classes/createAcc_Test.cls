@isTest
public class createAcc_Test {
    
    @isTest
    
    public static void createTest1(){
        createAcc acc = New createAcc(); // Empty account field are created
        acc.create('Test Class TEST 1');
        Account testAcc = [SELECT id,Name FROM Account];
        
        system.assertEquals('Test Class TEST 1', testAcc.Name, 'ERROR!!!');
    }
    
    
    @isTest
    public static void createTest2(){
        
        //CREATE JOB.................( TEST PREPARATION)
        createAcc acc = New createAcc(); 
        List<String> NameList = New List<String>();
        for(Integer i=1; i<=100;i++){
            NameList.add('TEST CLASS METHOD 2 Acc NO: ' + i);
               
        }
        
        acc.create(NameList);
        
        // EVALUATE JOB ........................... (TEST EVALUATION)
        
        List<Account> multiTestAcc = [SELECT id,Name FROM Account];
        
        Integer result = multiTestAcc.size();
        System.assertEquals(100, result, 'FAILED!!!');
        
    }
        @isTest
    public static void createTest3(){
        
        //CREATE JOB.................( TEST PREPARATION)
        createAcc acc = New createAcc(); 
        List<String> NameList = New List<String>();
        for(Integer i=1; i<=100;i++){
            NameList.add('TEST CLASS METHOD 2 Acc NO: ' + i);
               
        }
        
        Test.startTest();
        acc.create(NameList);
        
        // EVALUATE JOB ........................... (TEST EVALUATION)
        
        List<Account> multiTestAcc = [SELECT id,Name FROM Account];
        Test.stopTest();
        integer j = 1;
        
        for(Account singleTestAcc:multiTestAcc){
            System.assertEquals('TEST CLASS METHOD 2 Acc NO: '+j,singleTestAcc.Name,'ERROR!!');
            j++;
            
        }
        
    }
    @isTest
    public static void createTest4(){
        
        // JOB CREATION ................. TEST PREPARATION 
        createAcc acc = New createAcc();
        List<Contact> testContacts = new List<Contact>();
        
       
        for(Integer i=1; i<=10; i++){
            Contact sTestContact = new Contact(); // single Contact Creation
            sTestContact.firstName = 'Test Class '+i;
            sTestContact.LastName = 'Test Method '+i;
        	testContacts.add(sTestContact); // add all single contacts to list of Contact    
            
        }
        Test.startTest();
        insert testContacts;
        
        acc.create('Test Account', testContacts); // send Account name and Contact List to CreateAcc method.
        
        // CREATE TEST .................................TESTING
        
        Account newAccount = [SELECT id,Name FROM Account];
        List<Contact> newMultiContact = [SELECT id,firstName, LastName, Accountid FROM Contact];
        
        for(Contact newContact:newMultiContact ){
            
            System.assertEquals(newContact.Accountid, newAccount.id, 'ERROORRR!!!!');
            
            
        }
        
        Test.stopTest();
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}//end of class