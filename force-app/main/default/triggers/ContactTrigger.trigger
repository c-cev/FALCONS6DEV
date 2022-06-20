/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-11-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {
if (trigger.isBefore && trigger.isUpdate) {
    ContactTriggerHandler.contactUpdateValidation(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    
}
}