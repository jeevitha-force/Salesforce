trigger AccountTrigger on Account (before insert) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            AccountHelper.MatchBillingAdress(Trigger.new);
        }
    }
}