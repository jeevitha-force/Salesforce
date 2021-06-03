@isTest
public with sharing class ContactHelperTest {
    @isTest
    private static void ContactAccountCreationTest() {
        Contact cont= new Contact(LastName='Jilebi', Phone = '9493027367');
        insert cont;
        Account insertedacc = [SELECT Phone FROM Account WHERE Name='Jilebi'];

        System.assertEquals('9493027367',insertedacc.Phone);

    }
    @isTest
    private static void numberOfContactsTest(){
        Account a = new Account(Name = 'Johny');
        insert a;
        Contact conct= new Contact(LastName='Pavbhaji', AccountId =a.Id, Phone = '9493027367');
        insert conct;
        Account updatedAcct = [SELECT Id,Number_of_Contacts__c FROM Account WHERE Name='Johny'];
        System.assertEquals(1,updatedAcct.Number_of_Contacts__c);



    }
}
    

