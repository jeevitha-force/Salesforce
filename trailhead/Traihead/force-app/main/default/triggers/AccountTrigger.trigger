trigger AccountTrigger on Account (before insert,after insert,after Update) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            AccountHelper.MatchBillingAdress(Trigger.new);
            AccountHelper.AccountIndustry(Trigger.new);
            AccountHelper.deDuplicateAccount(Trigger.new);
        }
    }
    if(Trigger.isAfter){
        if(Trigger.isUpdate){
            AccountHelper.updateCity(Trigger.oldMap,Trigger.NewMap);
            
        }
    }
}