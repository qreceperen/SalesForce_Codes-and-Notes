
// // List a Query and Combine with SOQL 
// List <Account> myAccount = [ SELECT Name FROM Account];
// System.Debug(myAccount);
--------------------------------------------------------------------------------


// // For Loop
// for (Account acc:myAccount){
//     System.debug('NAME: ')
// }
-----------------------------------------------------------------------------------------------

// // Duplicate class to use with variable. Class must not be static in order to duplicate and use.

// ClassName varName = new ClassName();
-------------------------------------------------------------------------------------



// // How to get a value from a Map

// List<Account> ls = [SELECT Id,Name,Industry FROM Account];
// Map<Id,Account> m = new Map<Id,Account>(ls);

// for(String key : m.keyset()){ // iterate the map
//     system.debug(m.get(key).Name); // take Name field from map
//     system.debug(m.get(key).Industry);
    
// }
--------------------------------------------------------------------------------------------

// // Create Account and Related Contact ( 3 contact for each Account)
// List<Account> accList = new List<Account>();
//         for(Integer i=0; i<25; i++){

//             Account acc = new Account();
//             acc.Name= 'AccName'+ i;
//            // acc.FEMA_ID__c = '123456789' +i;
//             accList.add(acc);
//         }

//         insert accList;

//         // Create Contacts
//         List<Contact> conList = new List<Contact>();

//         for (Account acc : accList){
//             for(Integer i=0;i<3;i++){

//             Contact con = new Contact();
//             con.FirstName = 'fName '+ i;
//             con.LastName = 'lName ' + i;
//             //con.FEMA_ID__c = '123456789' +i;
//             con.Accountid = acc.id;
//             conList.add(con);
//         }   
//         }
//         insert conList;

----------------------------------------------------------------------------------------------

// // Bulk DELETE (You can apply same to Any Object)
// List<Contact> conList = [SELECT id,Name FROM Contact WHERE Name Like '%Test%'];
// delete conList;
