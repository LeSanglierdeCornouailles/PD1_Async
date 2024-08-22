/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 08-22-2024
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

//Create an instance of your apex
ContactsListWithController test = new ContactsListWithController();

//Storing the output into a list
List<Contact> result = test.getContacts();

//Printing 
System.debug('Result: '+result);