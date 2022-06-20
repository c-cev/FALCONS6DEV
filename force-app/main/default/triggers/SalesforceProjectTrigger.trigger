/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-11-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {
    if(trigger.isAfter && trigger.isInsert){
        system.debug('trigger called');
        SalesforceProjectTriggerHandler.updateProjectDescription(Trigger.NewMap.keySet());
        system.debug('future method called already. second method calling.');
        SalesforceProjectTriggerHandler.createDefaultSalesforceTicket(Trigger.New);
    }
    if(trigger.isAfter && trigger.isUpdate){
        SalesforceProjectTriggerHandler.spCompletedStatus(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    
}