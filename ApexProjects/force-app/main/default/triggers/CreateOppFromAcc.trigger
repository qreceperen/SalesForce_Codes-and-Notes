
/*1. Create a new Opportunity whenever an account is created/updated for Industry – Agriculture.
  2. Opportunity should be set as below:
  3.Stage = ‘Prospecting’, Amount = $0, CloseDate = ’90 days from today’. */

trigger CreateOppFromAcc on Account (after insert, after update) {
    
    if(Trigger.isInsert && Trigger.isAfter){
        
        list<Opportunity> multiOpp = new List<Opportunity>();
        for(Account acc: Trigger.new){
            if(acc.Industry=='Agriculture'){
                Opportunity singleOpp = new Opportunity();
                singleOpp.Name = acc.Name + ' Opp';
                singleOpp.AccountId = acc.id;
                singleOpp.StageName = 'Prospecting';
                singleOpp.Amount = 0;
                singleOpp.CloseDate = System.TODAY() + 90;
                multiOpp.add(singleOpp);
      
            }
  
        }
        insert multiOpp;
        
    }
    
    if(Trigger.isAfter && Trigger.isUpdate){
        List<Opportunity> multiOpp = new List<Opportunity>();
        
        for(Account acc:Trigger.new){
            if(acc.Industry!=Trigger.oldMap.get(acc.Id).Industry && acc.Industry=='Agriculture'){
                Opportunity singleOpp = new Opportunity();
                singleOpp.Name = acc.Name + ' Opp';
                singleOpp.AccountId = acc.id;
                singleOpp.StageName = 'Prospecting';
                singleOpp.Amount = 0;
                singleOpp.CloseDate = System.TODAY() + 90;
                multiOpp.add(singleOpp);
                
                
            }
        }
        insert multiOpp;
        
    }
    

}