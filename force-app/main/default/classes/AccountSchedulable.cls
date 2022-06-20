/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-10-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class AccountSchedulable implements Schedulable {
    public void execute(SchedulableContext sc) {
       AccountsBatch ab = new AccountsBatch();
        database.executeBatch(ab);
        
    }
}
