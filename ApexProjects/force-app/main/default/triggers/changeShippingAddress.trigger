trigger changeShippingAddress on Account (before insert) {
    if(Trigger.isInsert && Trigger.isBefore){
        for(Account acc:Trigger.new){
            acc.ShippingState=acc.BillingState;
        }

    }



}