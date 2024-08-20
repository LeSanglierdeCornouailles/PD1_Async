/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 08-20-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@IsTest
public with sharing class DailyLeadProcessorTest 
{
    @TestSetup
    static void setup()
    {
        List<Lead> lstOfLead = new List<Lead>();
        for (Integer i = 1 ; i <= 200 ; i++) 
        {
            Lead createdLead = new Lead(Company ='Comp'+i , LastName = 'Ln'+i, Status = 'Working - Contacted');
            lstOfLead.add(createdLead);
        }   
        Insert lstOfLead; 
    }
    static testmethod void testDailyLeadProcessorSchedulableJob()
    {
        String sch = '0 5 12 * * ?' ;
        Test.startTest();
        String jobId = system.schedule('ScheduledApexTest', sch,  new DailyLeadProcessor());
        List<Lead> lstOfLead = [SELECT Id FROM Lead WHERE LeadSource = null LIMIT 200];
        System.assertEquals(200, lstOfLead.size());

        Test.stopTest();
    }
}
