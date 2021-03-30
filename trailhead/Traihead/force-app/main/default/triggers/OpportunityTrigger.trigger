trigger OpportunityTrigger on Opportunity (before insert) {
    if(trigger.isBefore){
        if(trigger.isInsert){
            OpportunityHelper.OpportunityTask(Trigger.new);
        }
    }

}