
// // List a Query and Combine with SOQL 
// List <Account> myAccount = [ SELECT Name FROM Account];
// System.Debug(myAccount);



// // For Loop
// for (Account acc:myAccount){
//     System.debug('NAME: ')
// }


// // Duplicate class to use with variable

// ClassName varName = new ClassName();




// // How to get a value from a Map

// List<Account> ls = [SELECT Id,Name,Industry FROM Account];
// Map<Id,Account> m = new Map<Id,Account>(ls);

// for(String key : m.keyset()){ // iterate the map
//     system.debug(m.get(key).Name); // take Name field from map
//     system.debug(m.get(key).Industry);
    
// }