public class createAccount {
    
    public void newAcc(String Compname, String No){
        
        System.debug(CompName + ' named account ready to create');
        
        Account newAccount = new Account();
        newAccount.Name = CompName;
        newAccount.Phone = No;
        
        System.debug('New Account prepare: ' + newAccount);
        
        insert newAccount;
        
        System.debug('New Account created and ID is : ' + newAccount.id);
        
    }

}