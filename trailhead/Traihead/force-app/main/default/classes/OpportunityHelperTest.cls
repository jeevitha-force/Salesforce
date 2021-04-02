@isTest
public with sharing class OpportunityHelperTest {
    @isTest
    private static void OpportunityTaskTest(){
        Opportunity op = new Opportunity(Name = 'TestOpp', CloseDate = date.parse('03/21/2021'), StageName = 'Closed Won',Amount=9000, Type= 'Existing Customer - Upgrade');
        insert op;
        Opportunity insertedOpp = [SELECT Id FROM Opportunity WHERE Name = 'TestOpp'];
        Task t = [SELECT Id, Subject FROM Task WHERE WhatId=:insertedOpp.Id];
        System.assertEquals('This is the test for the task', t.Subject);
    }
}
