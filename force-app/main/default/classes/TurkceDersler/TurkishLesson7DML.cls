/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-28-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class TurkishLesson7DML {
    // public static void dmlMulRecordInsert(){
    //     List<Account> listAccount = new List<Account>();
    //     account acc= new Account();
    //     acc.Name = 'SoftInnovas - 10Sept v';
    //     acc.AccountNumber = 'ASCI-1';
    //     acc.Active__c ='Yes';
    //     system.debug('before saving account '+acc);
    //     //Add account to list
    //     listAccount.add(acc);
    //     for(integer i=1; i<15; i++){
    //         account acc2 = new Account();
    //         acc2.Name = 'SoftInnovas - 10Sept v'+i;
    //         acc2.AccountNumber = 'ACSI-2'+i;
    //         acc2.Active__c= 'Yes';
    //         listAccount.add(acc2); 
    //     }
    //     system.debug('size of list = '+listAccount.size());
    //     if(!listAccount.isEmpty()) insert listAccount;
    // } 

    public static void createAcc(string acName, decimal anRvn){
    Account acc = new Account();
    acc.Name = acName;
    system.debug(acc);
    insert acc; 

    //create 5 contact tied to this account. first name is account name and last name is KENT. list as 1,2,3,4,5
    List<Contact> cntList = new List<Contact>();
    for(integer i=1; i<=5; i++){
        contact cnt = new Contact();
        cnt.firstName = acc.Name;
        cnt.lastName = 'KENT'+i;
        cnt.AccountId = acc.id;
        cntList.add(cnt);
    }
    if(!cntList.isEmpty()){
        insert cntList;
    }
}
}