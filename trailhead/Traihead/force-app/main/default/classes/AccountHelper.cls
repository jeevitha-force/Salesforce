public with sharing class AccountHelper {
    public static void MatchBillingAdress(List<Account> lst) {
        for(Account acc:lst){
            if(acc.Match_Billing_Address__c	== true){
                acc.City__c = 'kanpur';
            }
        }

    }
    public static void AccountIndustry(List<Account> lst){
        for(Account acc:lst){
            if(acc.Industry!= null && acc.Industry== 'Banking'){
                acc.Rating = 'Hot';
            }
        }
    }
}
