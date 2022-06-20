
public class DmlDemo {
    
    public static void dmlInsertDemo_stndObj() {
        Account acc = new Account();
        acc.Name = 'Soft Innovas';
        acc.Site = 'www.softinnovas.com';
        acc.Description = 'Salesforce Bootcamp';

        insert acc;
        system.debug(acc);
     }

     public static void dmlInsertDemo_cstmObj() {
        salesforce_project__c sp = new salesforce_project__c();
        sp.project_name__c = 'Teach DML to falcons';
        sp.description__c = 'All 50% are great learners';
        insert sp;
    }

    public static void dmlUpdateDemo_1(){
        Account acc = new Account();
        acc.Name = 'Sales';
        insert acc;
        acc.Name = 'SalesForce Inc.';
        update acc;
    }

    public static void dmlUpdateDemo_3(){
        Account acc = [select name from account where name = 'Soft Innovas' order by CreatedDate desc limit 1];
        acc.Name = 'Soft Innovas inc.';
        update acc;
        system.debug('updated account '+ acc);
    }

    public static void dmlInsertDemo_2(){
        Account acc= [select name from account where name = 'Soft Innovas' limit 1];
        system.debug('acc id is '+ acc.id);
        Contact cnt = new Contact();
        cnt.lastname = 'Biden';
        cnt.AccountId = acc.id;

        insert cnt;
    }

    public static void dmlMultipleRecordInsert_right(){
        List<Account> listAcc = new List<Account>();
        Account acc1=new Account();
        acc1.Name = 'bulk acc 1';
        listAcc.add(acc1);

        Account acc2=new Account();
        acc2.Name = 'bulk acc 2';
        listAcc.add(acc2);

        Account acc3=new Account();
        acc3.Name = 'bulk acc 3';
        listAcc.add(acc3);

        insert listAcc;

    }

    public static void dmlMultipleRecordInsert2_right(){
        List<Account> listAcc = new List<Account>();
        Account acc=new Account();
        acc.Name = 'Soft Innovas 30-April22 v0';
        acc.AccountNumber = 'asci-1';
        acc.Active__c = 'Yes';
        listAcc.add(acc);

        for (Integer i = 1; i < 150; i++){
            Account acc2=new Account();
            acc2.Name = 'SoftInnovas 30-Apr22 v'+i;
            acc2.AccountNumber = 'asci-1'+i;
            acc2.Active__c = 'Yes';
            listAcc.add(acc2);
        }
        system.debug('size of list '+listAcc.size());
        if(!listAcc.isEmpty()){
            insert listAcc;
        }
    }

}