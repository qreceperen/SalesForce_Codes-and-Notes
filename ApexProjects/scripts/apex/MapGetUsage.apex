// How to get a value from a Map

// List<Account> ls = [SELECT Id,Name,Industry FROM Account];
// Map<Id,Account> m = new Map<Id,Account>(ls);

// for(String key : m.keyset()){ // iterate the map
//     system.debug(m.get(key).Name); // take Name field from map
//     system.debug(m.get(key).Industry);
    
// }

/* 1. Map <Id this is the key, Lead this is value
   2.  */
// Map<Id,Lead> multilead = New Map<Id,Lead>([SELECT Id,LastName,FirstName,Name,Title,Company,City FROM Lead]); // All id will be kept in Id and all others will be in Lead Object

// System.debug(multilead.keySet()()); // This collects all key s in the Map.
// System.debug(multilead.values()); // This collects all Values s in the Map.

/* Map the Account */
// Map<Id,Account> acc = new Map<Id,Account>([SELECT Id,Name,AnnualRevenue FROM Account ]);
// for(String c:acc.keySet()){ 
// System.debug(acc.get(c).Name);// Taking the name of Each Account from Map
// System.debug(acc.get(c));

// }
// System.debug(acc.values().Name);


/* Take Specific fields such as name from Account Object */
// Map<Id, Account> mapOfAccounts = new Map<Id, Account> ([Select Id,Name  From Account]);

// for( String acc:mapOfAccounts.keySet()){
// system.debug(mapOfAccounts.get(acc).Name); // Takes Account Name
// }


/* Similiar with above for contact */
// Map<Id, Contact> mapOfContact = new Map<Id, Contact> ([SELECT Account.Name, Name FROM Contact]);

// for( String con:mapOfContact.keySet()){
// system.debug(mapOfContact.get(con).Account.Name); // Takes Account Name
// }




/* REACHING THE CHILD OBJECT FROM MAP */
Map<Id, Account> mapOfAccounts = new Map<Id, Account> ([Select Id,Name,(SELECT Name FROM Contacts)  From Account]);

for( String acc:mapOfAccounts.keySet()){
    if(mapOfAccounts.get(acc).Contacts.isEmpty()==false){ // takes only if there is a contact on Related Account
        system.debug(mapOfAccounts.get(acc).Contacts); // Takes Account Name
    }
// system.debug(mapOfAccounts.get(acc).Contacts); // Takes Account Name
}