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
}
