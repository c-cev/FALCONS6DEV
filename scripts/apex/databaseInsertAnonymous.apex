account acc1= new account();
acc1.Name = 'SI Test';
acc1.Industry = 'Energy';
acc1.Active__c = 'No';

account acc2= new account();
acc2.Name = 'UI Test';
acc1.Industry = 'Energy';
acc1.Active__c = 'Yes';

Account acc12x = new Account();
Account acc12y = new Account();
Account acc12z = new Account();

list<account> listAcc = new List<Account>{acc1, acc2, acc12x, acc12y, acc12z};

list<database.SaveResult> results = database.insert(listAcc, false);
for(database.SaveResult eachResult : results){
    if(eachResult.isSuccess()){
        System.debug('Account sucssessfuly inserted, account id is '+eachResult.getId());
    } else {
        System.debug('Error: '+eachResult.getErrors());
    }
}