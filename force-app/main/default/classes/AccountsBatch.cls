/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-09-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

public class AccountsBatch implements Database.Batchable <SObject>, Database.stateful{
    public Integer count =0; 
    public Database.QueryLocator start(database.BatchableContext bc){
        database.QueryLocator q1 = database.getQueryLocator([select id, description, Active__c from account]);
        system.debug(q1);
        return q1;
    }
    public void execute (database.BatchableContext bc, list<account> scope){
        List<Account> updateAccounts = new List<Account>();
        for (account acc : scope) {
            if(acc.Active__c != 'No'){
                acc.description += '...updated via BATCH apex!';
                updateAccounts.add(acc);
                count++;
            }
             
        }
        if(!updateAccounts.isEmpty()){
            System.debug('count in execute method: '+count);
            update updateAccounts;
        }
    }
    public void finish(database.BatchableContext bc){
        system.debug('done with updating ALL the ACCOUNTS');
        System.debug('total updated records= '+count);
    }
    
}
