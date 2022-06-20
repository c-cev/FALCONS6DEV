/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-17-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    // system.debug('--------------Start----------');
    // system.debug('trigger.isBefore = '+trigger.isBefore);
    // system.debug('trigger.isAfter = '+trigger.isAfter);
    // system.debug('trigger.isInsert = '+trigger.isInsert);
    // system.debug('trigger.isUpdate = '+trigger.isUpdate);
    //  if (Trigger.isBefore && Trigger.isInsert){
    //     system.debug('before insert trigger called. yeah.');
    //     //system.debug('before update account trigger fired 3');
    // }
    //      if (Trigger.isAfter && Trigger.isInsert){
    //      system.debug('after insert trigger called.ooohhh yeahhh.');
    // }
    // system.debug('--------------End----------');

    
    // if (trigger.isInsert && Trigger.isAfter) {
    //   system.debug('trigger.new after insert = '+ trigger.new);
      
    //   List<account> newAccounts = trigger.new; 
    //   system.debug('total account inserted = '+ newAccounts.size());

    //   for (account acc: newAccounts){
    //     system.debug('account id is = '+acc.id + ', account name is = '+ acc.Name);
    //   }
    // }


    // if(trigger.isUpdate){
    //   for (account oldAcc : trigger.old) {
    //     system.debug('Old acc.id = '+trigger.old + ', old accname = '+oldAcc.Name);
    //   }
    //   for (account newAcc : trigger.new) {
    //     system.debug('New acc.id = '+trigger.new + ', new accname = '+newAcc.Name);
    //   }

    // }

    // Map<Id,Account> trgNewMap = trigger.NewMap;
    // Map<Id,Account> trgOldMap = trigger.OldMap;

    // if (trigger.isBefore && trigger.isInsert) {
    //   system.debug('=======BEFORE INSERT========');
    //   system.debug('Before insert old map '+ trgOldMap);
    //   system.debug('Before insert new map '+ trgNewMap);
      
    // }
    // if (trigger.isAfter && trigger.isInsert) {
    //   system.debug('=======AFTER INSERT========');
    //   system.debug('After insert old map '+ trgOldMap);
    //   system.debug('After insert new map '+ trgNewMap);
      
    // }
    // if (trigger.isBefore && trigger.isUpdate) {
    //   system.debug('=======BEFORE UPDATE========');
    //   system.debug('Before update old map '+ trgOldMap);
    //   system.debug('Before update new map '+ trgNewMap);
      
    // }
    // if (trigger.isAfter && trigger.isUpdate) {
    //   system.debug('=======AFTER UPDATE========');
    //   system.debug('After Update old map '+ trgOldMap);
    //   system.debug('After Update new map '+ trgNewMap);
      
    // }

    // if(trigger.isAfter && trigger.isUpdate){
    //   Map<Id, Account> newAccMap = trigger.newMap;
    //   Map<Id, Account> oldAccMap = trigger.oldMap;

    //   Set<Id> setofAccIds = newAccMap.keySet();
    //   for (Id eachId : setOfAccIds) {
    //     system.debug('===============');
    //     system.debug('each id = '+ eachId);

    //     Account newAccount = newAccMap.get(eachId);
    //     system.debug('New account name = '+newAccount.Name);

    //     Account oldAccount = oldAccMap.get(eachId);
    //     system.debug('Old account name = '+oldAccount.Name);

    //   }
    // }


    // if (trigger.isBefore) {
    //   system.debug('before insert/update trigger called');
    //   for (account eachAcc : trigger.new) {
    //     if (trigger.isInsert && eachAcc.Active__c=='Yes') {
          
    //         eachAcc.description = 'Account is active. Enjoy now!';
    //     }
    //     if (trigger.isUpdate) {
    //       if(eachAcc.Active__c=='Yes' && trigger.oldMap.get(eachAcc.id).Active__c !=trigger.newMap.get(eachAcc.id).Active__c){
    //         eachAcc.description = 'Account is active. Enjoy now!';
    //       }
          
    //     }
    //   }
    // }
   if (trigger.isBefore) {
     system.debug('before insert/update trigger called');
     AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
     
   }
   if(trigger.isAfter && trigger.isUpdate){
     AccountTriggerHandler.updateVipForAllContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
   }

  }