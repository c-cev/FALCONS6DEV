/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-14-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

public class StringDemoClass {
   public void stringMethod1(){
       //method variable
       string sessionDescription = 'learning string methods in Apex language.';
       //1.length
       integer lengthOfString = sessionDescription.length();
       system.debug('length of string is '+ lengthOfString);

       //2.to UpperCase
       string sessionDescriptionInCaps = sessionDescription.toUpperCase();
       system.debug('in caps ' + sessionDescriptionInCaps);  
       system.debug('our original string was '+ sessionDescription);

       //3. contains 'apex'
       Boolean containsApex = sessionDescription.contains('apex');
       system.debug('has apex? '+ containsApex);

       Boolean containsSalesforce = sessionDescriptionInCaps.contains('salesforce');
       system.debug('has salesforce??? '+containsSalesforce);

       Boolean containsApex2 = sessionDescription.contains('APEX');
       system.debug('has APEX? '+ containsApex2);

       //4. 
       string apexx = 'apex';
       string ap = 'APEXX';
       Boolean apexCheck = apexx.equal(ap);
       system.debug('apex check '+ apexCheck);
       
   }

}
