String soslFindClause = 'Wingo OR SFDC';

List<List<sObject>> searchlist = [FIND :soslFindClause IN ALL FIELDS
                                RETURNING Account(Name),Contact(FirstName,LastName,Department)];

    Account[] searchAccounts = (Account[])searchlist[0];
    Contact[] searchContacts = (Contact[])searchlist[1];

    system.debug('Found the Following accounts.--------------------------------------');

    for(Account a: searchAccounts){
        system.debug(a.Name);
    }
    system.debug('Found the Following contacts.--------------------------------------');

    for(Contact c: searchContacts){
        system.debug(c.Name);
    }