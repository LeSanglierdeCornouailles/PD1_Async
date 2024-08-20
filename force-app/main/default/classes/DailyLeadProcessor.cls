/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 08-20-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
//Creating a schedulable apex class (Asynchronus) 
public with sharing class DailyLeadProcessor implements Schedulable
{   //Creating a method
    public void execute(SchedulableContext sc)
    {   //Creating a list to store 
        List<Lead> l_lst_new = new List<Lead>();
        //Creating a list to store the outpot of the SOQL
        List<Lead> l_lst     = new List<Lead>([SELECT id, leadsource FROM lead WHERE leadsource = null]);
        //Iterating through the stored list and doing some DML
        for(Lead l : l_lst  )
            {
            l.leadsource = 'Dreamforce';
            l_lst_new.add(l);
            }
    }
}
