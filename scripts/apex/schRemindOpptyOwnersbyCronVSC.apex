/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 08-09-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
//Creating instance
schRemindOpptyOwnersbyCronVSC  scheduling  = new schRemindOpptyOwnersbyCronVSC();
//Scheduling the apex
//Seconds Minutes Hours DayofMonth Month Dayofweek Year
String sch = '0 50 17 09 08 ? 2024';
String jobid = System.Schedule('scheduling apex class RemindOpptyOwnersbyCronVSC', sch, scheduling );