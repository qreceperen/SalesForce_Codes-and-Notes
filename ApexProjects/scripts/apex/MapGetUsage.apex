// How to get a value from a Map

// List<Account> ls = [SELECT Id,Name,Industry FROM Account];
// Map<Id,Account> m = new Map<Id,Account>(ls);

// for(String key : m.keyset()){ // iterate the map
//     system.debug(m.get(key).Name); // take Name field from map
//     system.debug(m.get(key).Industry);
    
// }

/* 1. Map <Id this is the key, Lead this is value
   2.  */
Map<Id,Lead> multilead = New Map<Id,Lead>([SELECT Id,LastName,FirstName,Name,Title,Company,City FROM Lead]); // All id will be kept in Id and all others will be in Lead Object

System.debug(multilead.keySet()()); // This collects all key s in the Map.
System.debug(multilead.values()); // This collects all Values s in the Map.




