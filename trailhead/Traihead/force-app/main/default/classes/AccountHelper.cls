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
}
