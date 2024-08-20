/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 08-19-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
//Creating instance
schRemindOpptyOwnersbyCronVSC  scheduling  = new schRemindOpptyOwnersbyCronVSC();
//Scheduling the apex
//Seconds Minutes Hours DayofMonth Month Dayofweek Year
String sch = '00 30 08 19 08 ? 2024';
String jobid = System.Schedule('scheduling apex class RemindOpptyOwnersbyCronVSC', sch, scheduling );