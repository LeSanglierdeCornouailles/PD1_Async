/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 08-22-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class NewCaseListController 
{
    public List<Case> getNewCases() {
        List<Case> results = [SELECT CaseNumber FROM Case WHERE status='New'];
            return results;
    }
}