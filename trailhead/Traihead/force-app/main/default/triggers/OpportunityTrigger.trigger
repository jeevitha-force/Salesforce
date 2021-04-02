trigger OpportunityTrigger on Opportunity (before insert, after insert) {
    if(trigger.isAfter){
        if(trigger.isInsert){
            OpportunityHelper.OpportunityTask(Trigger.new);
        }
    }

}