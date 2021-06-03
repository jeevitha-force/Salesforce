@isTest
public with sharing class LeadHelperTest {
    @isTest
    private static void LeadPrefixDrTest() {
        Lead l = new Lead();
        l.LastName = 'Susan';
        l.Company = 'Madmoisemiel';
        l.Status = 'Open - Not Contacted';
        INSERT l;
        Lead insertedLead = [SELECT Id,Name FROM Lead WHERE Company = 'Madmoisemiel'];
        System.assertEquals(insertedLead.Name,'Dr Susan');


    }
}
