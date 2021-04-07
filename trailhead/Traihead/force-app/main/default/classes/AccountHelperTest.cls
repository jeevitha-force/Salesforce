@isTest
public class AccountHelperTest {
    
    @isTest
    private static void MatchBillingAddressTest() {
        Account a = new Account();
        a.Name = 'Kart';
        a.Match_Billing_Address__c	= true;
        INSERT a;

        Account insertedAcct = [SELECT City__c, Name, Id FROM Account WHERE Name = 'Kart'];
        System.assertEquals(insertedAcct.City__c, 'kanpur');
        
    }
    @isTest
    private static void AccountIndustryTest(){
        Account a = new Account();
        a.Name ='JeevTest';
        a.Industry = 'Banking';
        INSERT a;

        Account insertedValue = [SELECT  Name, Id,Rating FROM Account WHERE Name ='JeevTest'];
        System.assertEquals(insertedValue.Rating, 'Hot');
    }

    @isTest
    private static void deDuplicateAccountTest(){
        Account a = new Account(Name = 'talaiva');
        INSERT a;
        try {
            Account b = new Account(Name = 'talaiva');
            INSERT b;
            
        } catch (Exception e) {
            System.assert(e.getMessage().contains('Account with this name already exists'));
        } 
    }
}


