trigger Ownership on Account (before insert) {

    for(Account acc:Trigger.new){

        if(acc.Industry == 'Banking'){
            acc.Ownership = 'Private';

        }
    }

}