public with sharing class OpportunityHelper {
    public static void OpportunityTask(List<Opportunity> OppList) {
        if(Opportunity.StageName == 'Closed Won'){
            for(Opportunity Opp:OppList){
                Task t = new Task();
                t.Subject = 'This is the test for the task';
                t.WhatId = opp.id;
                Opp.add(t);
            }
        }

    }
}
if(OppList.size() >0){
insert OppList;
}  

}
