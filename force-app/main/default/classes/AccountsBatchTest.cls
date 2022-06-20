/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-09-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public with sharing class AccountsBatchTest {
    @isTest
    private Static void testMethod1(){
        //Step 1:Prep Data
     List<Account> listAcc = new List<Account>();
     
     account acc= new account();
     acc.Name = 'Test Acc 0';
     acc.AccountNumber = 'asci-1';
     acc.Active__c = 'Yes';
     listAcc.add(acc);

     for(integer i=1; i<500; i++){
        account acc2= new account();
        acc2.Name = 'Test Acc '+i;
        acc2.AccountNumber = 'asci-1'+i;
        acc2.Active__c = 'Yes';
        listAcc.add(acc2);
     }
     System.debug('size of list '+listAcc.size());
     if(!listAcc.isEmpty()){
         insert listAcc;
     }
     //End of Step1
     //Step2
     test.startTest();
     AccountsBatch ab = new AccountsBatch(); 
     database.executeBatch(ab, 501);
     test.stopTest();

    //Assert
    List<Account> accounts = [select id, description from account];
    for(account a: accounts){
        system.assert(a.Description.containsIgnoreCase('batch'));
    }
    }
}
