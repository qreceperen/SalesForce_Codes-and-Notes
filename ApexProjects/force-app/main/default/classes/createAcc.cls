public with sharing class createAcc {
    
    public createAcc(){
           
    }
    
    public void create (String accName){
    Account singleAccount = New Account();
        singleAccount.Name =accName;
        insert singleAccount;
        
    }
    
    public void create (List<String> accNames){
        List<Account> multiAcc = new List<Account>();
        
        for(String accName: accNames){
            Account singleAcc = new Account();
            singleAcc.Name = accName;
            multiAcc.add(singleAcc);
            system.debug(singleAcc); 
        }
        insert multiAcc;  
    }
    
    public void create(String accName, List<Contact> multiContacts){
        
       Account singleAccount = new Account();
        singleAccount.Name = accName;
        insert singleAccount;
        
        List<Contact>newMultiContact = new List<Contact>();
        
        for(Contact singleContact:multiContacts){
            
            if(String.isBlank(singleContact.id)){
                // create contact ............
                singleContact.AccountId = singleAccount.id; // look up 
                if(String.isBlank(singleContact.LastName)){
                    system.debug('Required field is missing: '+ singleContact);
     
                } else{
                newMultiContact.add(singleContact);
                    }

            }else{
                // update contact
                
                singleContact.AccountId = singleAccount.id; // look up
                newMultiContact.add(singleContact);
            }
        }
        upsert newMultiContact; // update or insert if there is no. 
    }
} // end of Class