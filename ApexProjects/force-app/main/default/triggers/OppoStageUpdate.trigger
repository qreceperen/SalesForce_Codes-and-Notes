trigger OppoStageUpdate on Account (after update) {
    if(Trigger.isAfter && Trigger.isUpdate){
        Set<Id> accountIds = new Set<Id>();

        for(Account acc:Trigger.new){
            accountIds.add(acc.Id);
            // system.debug(accountIds);
        }
        Datetime day30 = system.now()+1;

        List<Opportunity> oppListToUpdate = new List<Opportunity>();
        List<Opportunity> oppList =[SELECT Id, AccountId, StageName, CreatedDate, CloseDate FROM Opportunity WHERE AccountId in :accountIds ];

        if(oppList.size()>0){
            for(Opportunity opp: oppList){
                if(opp.CreatedDate<day30 && opp.StageName!='Closed Won'){
                    opp.StageName = 'Closed Lost';
                    opp.CloseDate = System.today();
                    oppListToUpdate.add(opp);

                }

            }

        }
        if(oppListToUpdate.size()>0){
            update oppListToUpdate;
        }




    }

}