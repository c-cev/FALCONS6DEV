/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-01-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public with sharing class CustomContactAPITest {
  @isTest
  private static void getContactTest(){
    Account a = new Account();
    a.Name = 'AccTestName';
    insert a;

    contact c= new contact();
    c.accountId = a.id;
    c.LastName = 'test contact';
    insert c;

    RestRequest Request= new RestRequest();
    Request.requestURI = '/ContactCustom/'+c.id;
    Request.httpMethod = 'GET';

    RestContext.Request= Request; 

    Test.startTest();
    Contact cReturn=CustomContactAPI.getContactId();
    Test.stopTest();

    system.assert(cReturn.Name == c.Name);
  } 
}
