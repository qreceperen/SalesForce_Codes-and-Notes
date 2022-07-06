String target = 'Burlington';

Account [] accts = [SELECT Name FROM Account WHERE Name LIKE ];
Account[] acct = [SELECT Name FROM Account WHERE Name LIKE '%'+:target+'%'];

system.debug(acct);


