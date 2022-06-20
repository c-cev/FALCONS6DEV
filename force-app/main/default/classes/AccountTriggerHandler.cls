/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-17-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

public class AccountTriggerHandler {
//     public static void updateAccountDescription(List<Account> accTriggerNew, List<Account> accTriggerOld, Map<Id, Account> accTriggerNewMap, Map<Id, Account> accTriggerOldMap); {
     
//         for (account eachAcc: accTriggerNew) {
//             Boolean updateDesc = false;
//             if (accTriggerOldMap == null && eachAcc.Active__c == 'Yes') {
//                 updateDesc = true;
//            }
//            if (accTriggeroldMap!=null) {
//                Account oldAccount = accTriggerOldMap.get(eachAcc.Id);
//                string oldAccountActive = oldAccount.Active__c;
//                //check if active is updated
//                //active is changed to Yes
//                if (eachAcc.Active__c=='Yes' && oldAccountActive!='Yes') {
//                    updateDesc =true;
//               }
//            }
//            if (updateDesc) {
//                eachAcc.Description = 'Account is active. Enjoy now!';
               
//            }
            
//         }
//  }

    public static void updateVipForAllContacts(List<Account> accTriggerNew, List<Account> accTriggerOld, Map<Id, account> accTriggerNewMap, Map<Id, account> accTriggerOldMap){
        system.debug('update all accounts VIP field');

        Set<Id> setAccIds = new Set<Id>();

        for(account eachAcc: accTriggerNew){
           if(eachAcc.Vip__c !=accTriggerOldMap.get(eachAcc.Id).Vip__c){
               setAccIds.add(eachAcc.Id);
           } 
      }
      //get list of contacts for accounts where VIP is updated
      List<Contact> listContacts = [select id, name, account.id, vip__c from contact where account.id in :setAccIds];

      for (contact eachContact : listContacts) {
          Account newAccount = accTriggerNewMap.get(eachContact.account.id);
          boolean newAccVip = newAccount.vip__c;

          eachContact.vip__c=newAccVip;
        }
        if(!listContacts.isEmpty()){
            update listContacts;
        }
 }
}
