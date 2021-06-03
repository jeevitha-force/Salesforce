trigger ContactTrigger on Contact (after insert) {
    if(trigger.isAfter){
        if(trigger.isInsert){
            ContactHelper.ContactAccountCreation(Trigger.new);
            ContactHelper.numberOfContacts(Trigger.new);
        }
    }
}