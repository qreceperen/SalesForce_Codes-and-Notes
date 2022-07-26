// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

List<Account> accList = [SELECT Name FROM Account WHERE Name LIKE '%TEST%'];
List<Opportunity> oppList = [SELECT Name FROM Opportunity WHERE Name LIKE '%TEST%'];
delete accList;
delete oppList;




