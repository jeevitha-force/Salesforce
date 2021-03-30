public with sharing class AccountHelper {
    public static void MatchBillingAdress(List<Account> lst) {
        for(Account acc:lst){
            if(acc.Match_Billing_Address__c	== true){
                acc.City__c = 'hibv';
            }
        }

    }
}
