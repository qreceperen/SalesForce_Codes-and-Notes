// Account singleAccount = new Account ();
// singleAccount.Name = "TEST-1 " + "FROM SNIPPET";


// Account singleAccount= new Account ();
// singleAccount.Name = 'TEST-7 ' + 'Seconf Test From Snipped';
// insert singleAccount;


// Account acc= new Account ();
//     acc.Name = 'TEST-9 ' + 'Account Trigger';
//     acc.BillingState = 'CV';
//     acc.BillingCity ='Buffalo';
//     acc.BillingStreet = 'Eggert Street';
//     acc.BillingPostalCode = '14225';
//     acc.BillingCountry =  'USA';
// insert acc;

List<Account> accList = [SELECT Id,Name FROM Account WHERE Name Like 'TEST 0%' LIMIT 1];
// system.debug(accList);

for(Account acc: accList){
    acc.Name = 'TEST0 Name is Updated1';
    update acc;
}

// List<Account> accList = [SELECT Name FROM Account WHERE  Name LIKE 'TEST%' ];
// delete accList;

