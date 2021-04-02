public with sharing class OpportunityHelper {
    public static void OpportunityTask(List<Opportunity> OppList) {

            List<Task> tasks = new List<Task>();
            for(Opportunity opp:OppList){
                if(opp.StageName == 'Closed Won'){
                    Task t = new Task();
                    t.Subject = 'This is the test for the task';
                    t.WhatId = opp.Id;
                    tasks.add(t);
                    System.debug(t);
                }
                
            }
            INSERT tasks;
        

    }
}
