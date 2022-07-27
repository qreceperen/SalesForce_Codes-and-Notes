// List<Contact> multiCon = [SELECT Name
//   FROM Contact
//   WHERE Name LIKE 'TEST%'];

//   delete multiCon;

// system.debug(RandomContactFactory.generateRandomContacts(4, 'KULLU'));

// List<Contact> multiCon = new List<Contact>();

//         for(Integer i=0;i<5;i++){
//         Contact singleCon = new Contact();
//         singleCon.FirstName = 'Test'+i;
//         singleCon.LastName = 'EREN2';
//         multiCon.add(singleCon);
//         }
//         insert multiCon;


List<Contact> allTestCon = [SELECT FirstName FROM Contact Where FirstName LIKE 'Test%'];

system.debug(allTestCon);