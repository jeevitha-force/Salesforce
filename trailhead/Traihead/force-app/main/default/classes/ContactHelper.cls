public with sharing class ContactHelper {
    public static void ContactAccountCreation(List<Contact> conlst) 
    {
        List<Account> acclst = new List<Account>();
        for(Contact con:conlst){
            if(con.AccountId == null){
                Account acc = new Account();
                acc.Name = con.LastName;
                acc.Phone = con.Phone;
                acclst.add(acc);
            }
        }
        INSERT acclst;
        
    }
/* This method inserts/updates the number of contacts in the Account
 *
 * 
 */  
    public static void numberOfContacts(List<Contact> conList){
        List<String> accountIds = new List<String>();
        for(Contact con:conList){
            accountIds.add(con.AccountId);
        }
        List<Account> actCont =[SELECT Id, (Select Id,Name From Contacts) FROM Account WHERE Id IN:AccountIds];
        
        for(Account a:actCont)
        {
            a.Number_of_Contacts__c	= a.Contacts.size();
            
        }
        UPDATE actCont;
}
}
