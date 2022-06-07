trigger AccountHW on Account (before insert, after insert) {

// Make Ownership = Private when New Account Created and Industry = Banking
if(Trigger.isBefore && Trigger.isInsert){

    for (Account acc:Trigger.new){
        if(acc.Industry =='Banking'){
            acc.Ownership ='Private';
        }
    }
}
// Create New account Industry = EDUCATION, RATING=Warm; it trigger to Create New Opportunity name as account
// and other required fields.
if(Trigger.isAfter && Trigger.isInsert){

    List<Opportunity> opportunityList = new List<Opportunity>(); // Create empty Opp list to fill
    For(Account acc:Trigger.new){ // it takes the info from account object
        if(acc.Industry =='EDUCATION' && acc.Rating == 'WARM'){
            Opportunity opp = new Opportunity(); // Create single empty  opp record to fill.
            opp.Name = acc.Name;
            opp.Type = 'New Customer';
            opp.CloseDate = system.today()+15;
            opp.StageName = 'Prospecting';
            opportunityList.add(opp);

        }
    }
    insert opportunityList;

}
}




