/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-04-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc


public class SoqlDemo {
    public static Void accountSoql_1() {
    //SOQL Query always returnd the List<sObject>
       List<Account> listAcc = [select id, name from Account WHERE name like '%A%'];
       system.debug('account list = '+listAcc);
       system.debug('number of account is '+listAcc.size());

       account latestAcc=[select name, website from account order by CreatedDate desc limit 1];
       system.debug('latest acc name is '+latestAcc);
    }

    public static void accountSoql_2(){
        Account acc = [select id, name, phone, accountNumber from account order by CreatedDate desc limit 1];
        system.debug('latest acccount created is '+ acc);
        //store name in a variable
        String accName=acc.Name;
        String accPhone=acc.Phone;
        system.debug('account Name = '+accName);
        system.debug('account phone number is '+ accPhone);
        system.debug('account number is '+acc.AccountNumber);
    }
    public static void accountSoql_3(){
        List<Account> listAcc = [select id, name, phone, AccountNumber from Account order by Createddate desc];
       system.debug('all accounts are '+listAcc);
       for (Account eachAccount : ListAcc) {
           id accId = eachAccount.Id;
           String accName = eachAccount.Name;
           system.debug('acc name is '+accName);
           String accPhone = eachAccount.Phone;
           system.debug('acc phone number is '+accPhone);
           String accAccountNumber = eachAccount.AccountNumber;
           system.debug('acc number is '+accAccountNumber);
           
       }
    }

    public static void accountSoql_Filter(){
        string accNameFilter = 'Softinnovas';
        List<Account> listAcc = [select name from account where name= :accNameFilter];
        system.debug(listAcc);
    }
   