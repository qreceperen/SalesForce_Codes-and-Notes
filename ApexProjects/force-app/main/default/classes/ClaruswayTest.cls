@isTest
public class ClaruswayTest {
    
    @isTest
    public static void constructor0(){
        Clarusway testCohort0 = new Clarusway();
        String result = testCohort0.getNickName();
        System.assertEquals('', result, ' ERROR!!');        
    }
     @isTest
    public static void constructor1(){
        Clarusway testCohort1 = new Clarusway('Test Cohort 1');
        String result = testCohort1.getNickName();
        System.assertEquals('Test Cohort 1', result, ' ERROR!!');        
    }
    
    @isTest
    public static void addSFTest1(){
        Clarusway testCohort1 = new Clarusway('Test Cohort 1');
        testCohort1.addSF('Test Cohort Student');
        Boolean result = testCohort1.checkSF('Test Cohort Student');
        system.assertEquals(true, result, 'Error addSFTest1');
        
    }
    @isTest
    public static void addSFListTest1(){
        Clarusway testCohort1 = new Clarusway('Test Cohort Student');
        List<String> testList = new List<String>();
        testList.add('test std 1');
        testList.add('test std 2');
        testList.add('test std 3');
        testList.add('test std 4');
        
        Boolean result = testCohort1.addSF(testList);
        system.assertEquals(true, result);
        
    }
    
    @isTest
    public static void addAWSTest1(){
        Clarusway testCohort1 = new Clarusway();
        Boolean result = testCohort1.addAWS('AWS Test Student');
        System.assert(result, 'AddAWS method is dailed');         
    }
    
    @isTest
    public static void addAWSListTest1(){
        Clarusway testCohort1 = new Clarusway();
        List<String>listAWS = new List<String>();
        listAWS.add('Test AWS 1');
        listAWS.add('Test AWS 2');
        listAWS.add('Test AWS 3');
        Boolean result = testCohort1.addAWS(listAWS);
        System.assert(result, 'AddAWS method is failed');         
    }
    
    
    @isTest
    public static void allTest1(){
        Clarusway c1 = New Clarusway();
        Clarusway c2 = New Clarusway();
        
        c1.addSF('test Salesforce');
        c1.addSF('test Salesforce');
        c1.addAWS('test Salesforce');
        
        c1.addSF('test Salesforce');
        c2.addAWS('test Salesforce');
        c2.addAWS('test Salesforce');
        
        Integer result = Clarusway.all();
        system.assertEquals(6, result, ' all method is failed. ');
        
        
    }
    
   
}