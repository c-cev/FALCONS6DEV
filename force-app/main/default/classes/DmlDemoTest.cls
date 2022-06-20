/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-19-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class DmlDemoTest {
    @isTest   
    private static void DmlDemoTest1() {
        DmlDemo.dmlInsertDemo_stndObj();

        List<Account> listAcc = [select id, name from account];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('Soft Innovas', listAcc[0].Name);
   }
}