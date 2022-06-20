/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-11-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class ContactTriggerHandler {
    public static void contactUpdateValidation(List<contact> cntTriggerNew, List<contact> cntTriggerOld, Map<Id, Contact> cntTriggerNewMap, Map<Id, Contact> cntTriggerOldMap){
        for (contact eachContact: cntTriggerNew) {
            if (eachContact.LeadSource == 'Partner Referral') {
                eachContact.addError('Cannot update contact where lead source is Partner Referral');
            }
            
        }

    }
    public static void contactUpdateValidation2(List<contact> cntTriggerNew, List<contact> cntTriggerOld, Map<Id, Contact> cntTriggerNewMap, Map<Id, Contact> cntTriggerOldMap){
        for (contact eachContact : cntTriggerNew){
            contact oldContact = cntTriggerOldMap.get(eachContact.Id);
            if (oldContact.LeadSource != eachContact.LeadSource) {
                string customValidation = System.label.contactValidation2;
                eachContact.LeadSource.addError(customValidation);
                
            }
        }
    }

}
