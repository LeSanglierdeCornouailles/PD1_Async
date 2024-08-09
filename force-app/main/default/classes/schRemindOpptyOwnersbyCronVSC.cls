/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 08-09-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
global class schRemindOpptyOwnersbyCronVSC implements Schedulable{
    global void execute(System.SchedulableContext sc) 
    {
        RemindOpptyOwners M = new RemindOpptyOwners();
    }
}

