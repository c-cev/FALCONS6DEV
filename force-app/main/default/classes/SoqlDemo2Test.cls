/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-22-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class SoqlDemo2Test {
    @isTest
    Private static Void soqlDemoTest1() {
        Account acc1 = new account();
        acc1.Name = 'SI Test';
        acc1.Industry = 'Energy';

        Account acc2 = new account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energy';

        Account acc3 = new account();
        acc3.Name = 'PI Test';
        acc3.Industry = 'Banking';

        List<Account> listAcc = new List<Account>{acc1, acc2, acc3};
        insert listAcc;

        List<Contact> listContact = new List<Contact>();
        for(integer i=0; i<300; i++){
            Contact c = new Contact();
            c.LastName = 'Test SOQL';
            if(i<100){
                c.accountid = acc1.id;
            } else if (i<200){
                c.accountid = acc2.id;
            } else if(i<300){
                c.accountid = acc3.id;
            }
            listContact.add(c);
        }
        insert listContact;
        Test.startTest();
        SoqlDemo2.childToParent_Soql1();
        Test.stopTest();
    }
}
