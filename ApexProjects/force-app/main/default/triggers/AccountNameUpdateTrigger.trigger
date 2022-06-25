trigger AccountNameUpdateTrigger on Account (before insert) {

    if(Trigger.isBefore && Trigger.isInsert){

        System.debug('New Values');
        System.debug (Trigger.new);
        System.debug(Trigger.newMap);

    }

}