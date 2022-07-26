trigger changeShippingAddress on Account (before insert) {
    if(Trigger.isInsert && Trigger.isBefore){
        AccountTriggers.updateAccountAdress(Trigger.new);
        
        }

    }


