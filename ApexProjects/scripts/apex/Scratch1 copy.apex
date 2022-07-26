List<Account> accList = new List<Account>();
for(Integer i=0;i<3;i++){
    Account acc = new Account();
    acc.Name = 'TEST ' + i + ' Account';
    accList.add(acc);

}
insert accList;

List<Opportunity> oppList = new List<Opportunity>();

for(Account acc:accList){
    for(Integer j=0;j<3;j++){
        Opportunity opp = new Opportunity();
            opp.Name = acc.Name + ' Opportunity' + j;
            opp.CloseDate = System.today()+30;
            opp.StageName = 'Prospecting';
            opp.AccountId = acc.id;
            oppList.add(opp);
        

    }
    

}
insert oppList;
