trigger LeadTrigger on Lead (before insert) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            LeadHelper.LeadPrefixDr(Trigger.new);
        }
    }
}