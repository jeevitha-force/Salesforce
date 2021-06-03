public with sharing class AccountHelper {
    public static void matchBillingAdress(List<Account> lst) {
        for(Account acc:lst){
            if(acc.Match_Billing_Address__c	== true){
                acc.City__c = 'kanpur';
            }
        }

    }
/*
 * for Banking account industry, update the account rating
 * @param lst the new opportunities
 */   
    public static void accountIndustry(List<Account> lst){
        for(Account acc:lst){
            if(acc.Industry!= null && acc.Industry== 'Banking'){
                acc.Rating = 'Hot';
            }
        }
    }
 /*
 * for deduplicating Account names
 * @param accList takes the new account list
 */    

    public static void deDuplicateAccount(List<Account> accList){
        List<String> accNames = new List<String>();
        for(Account a:accList) {
            accNames.add(a.Name); 
        }
        List<Account> duplicates = [SELECT Name FROM Account WHERE Name IN :accNames];
        if(duplicates.size() > 0) {
            for(Account dup:duplicates) {
                for(Account org:accList) {
                    if(dup.Name.equals(org.Name)){
                        org.addError('Account with this name already exists');
                    }
                }
            } 
        }
    }
/*
 * for updating the city on account and syn in Opportunity
 * @param Listt takes the new Account list
 */  
    public static void updateCity(Map<Id,Account> oldMap,Map<Id,Account> newMap)
    {
        List<String> accIds = new List<String>();
        for(Account a:newMap.values()){
            if(a.City__c!=OldMap.get(a.Id).City__c){
                accIds.add(a.Id);
            }
        }
        List <Opportunity> opps = [SELECT Id, AccountId, City__c FROM Opportunity WHERE AccountId IN:accIds];
        //List<Opportunity> oprt = new List<Opportunity>();
        for(Opportunity o:opps){
            o.City__c = NewMap.get(o.AccountId).City__c;
        }
        update opps;
    }
 
}
