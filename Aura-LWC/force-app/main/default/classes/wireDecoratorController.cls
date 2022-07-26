public with sharing class wireDecoratorController {
    public wireDecoratorController() {

        // constructor

    }

    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountRecords(){
        list<Account> multiAccount = new List<Account>();


        try {
            multiAccount = [SELECT id,Name,CreatedDate FROM Account ORDER BY CreatedDate LIMIT 10];
            
        } catch (QueryException e) {
            throw new AuraHandledException(e.getMessage());
        }
        return multiAccount;
    }
}
