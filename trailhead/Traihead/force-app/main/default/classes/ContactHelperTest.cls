@isTest
public with sharing class ContactHelperTest {
    @isTest
    private static void ContactAccountCreationTest() {
        Contact cont= new Contact(LastName='Jilebi', Phone = '9493027367');
        insert cont;
        Account insertedacc = [SELECT Phone FROM Account WHERE Name='Jilebi'];

        System.assertEquals('9493027367',insertedacc.Phone);

    }
}
