@isTest
public class AccountHelperTest {
    
    @isTest
    private static void MatchBillingAddressTest() {
        Account a = new Account();
        a.Name = 'Kart';
        a.Match_Billing_Address__c	= true;
        INSERT a;

        Account insertedAcct = [SELECT City__c, Name, Id FROM Account WHERE Name = 'Kart'][0];
        System.assertEquals(insertedAcct.City__c, 'hibv');
        
    }
}


