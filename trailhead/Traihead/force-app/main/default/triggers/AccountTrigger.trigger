trigger AccountTrigger on Account (before insert) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            AccountHelper.MatchBillingAdress(Trigger.new);
            AccountHelper.AccountIndustry(Trigger.new);
            AccountHelper.deDuplicateAccount(Trigger.new);
        }
    }
}