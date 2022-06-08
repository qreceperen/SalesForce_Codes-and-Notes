// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);



string recordId = new String(); // Available for input
Integer LoopCounter = new Integer();
Integer Mod2 = LoopCounter,2;
Record <Task> r_Task = new Record<Task>();

List<Account> Get_Account = new List<Account>();
List<Contact> Get_Contacts = new List<Contacts>();

for(Account acc:Get_Account){
    LoopCounter++;
}

