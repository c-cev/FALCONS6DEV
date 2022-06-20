
@isTest
public with sharing class AccountQueuableExampleTest {
   @testSetup
   static void makeData(){
       List<Account> accounts = new List<Account>();
       for(integer i=0; i<100; i++){
           account a = new account(name='Test Account'+ i, Phone='987654321');
           accounts.add(a);
       }
       insert accounts;
   }
   @isTest
   static void methodName(){
       List<Account> accs = [select id, name from account];
       test.startTest();
       AccountQueuableExample aq = new AccountQueuableExample(accs);
       system.enqueueJob(aq); 
       test.stopTest();

       integer count = [select count() from account where name like'%SI%'];
       system.assertEquals(100, count);
       
   }
}
