/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-18-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger CaseTrigger on Case (before insert, before update) {
    if(trigger.isInsert){
        System.debug('before insert trigger called');
    }
    if(trigger.isUpdate){
        CaseTriggerHandler.countTriggerExecution++;
        system.debug('# of times trigger executed: '+CaseTriggerHandler.countTriggerExecution);

        CaseTriggerHandler.countRecordUpdate += trigger.size;
        system.debug('# of records updated = '+ CaseTriggerHandler.countRecordUpdate);
    }
}