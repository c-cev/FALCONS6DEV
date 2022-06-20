/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-12-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class SalesforceProjectTriggerHandler {
    public static void createDefaultSalesforceTicket(List<Salesforce_Project__c> spTriggerNew){
        List <Salesforce_Ticket__c> listST = new List<Salesforce_Ticket__c>();

        for(Salesforce_Project__c sp: spTriggerNew){
            Salesforce_Ticket__c st = new Salesforce_Ticket__c();
            st.Subject__c = 'Default ST';
            st.Description__c = 'A default ticket for project.';
            st.Salesforce_Project__c = sp.Id;
            listST.add(st);
        }
      if(!listST.isEmpty()){
          insert listST;
      }
    }
    
    public static void spCompletedStatus(List<Salesforce_Project__c> spTriggerNew,
    List<Salesforce_Project__c> spTriggerOld,
    Map<id, Salesforce_Project__c> spTriggerNewMap,
    Map<id, Salesforce_Project__c> spTriggerOldMap){
    //get set<id> where status is changed and updated to 'Completed'
       Set<Id> spIds = new Set<Id>();
       for(Salesforce_Project__c sp : spTriggerNew){
        //if new record status!= old record status
        if(sp.Status__c != spTriggerOldMap.get(sp.id).Status__c
        && sp.Status__c == 'Completed'){
            spIds.add(sp.Id);
        }
     }
     if(!spIds.isEmpty()){
       updateTicketStatusCompleted(spIds);
     }
   }
   @future
   private static void updateTicketStatusCompleted(set<id> spIds) {
       List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c where Salesforce_Project__c in :spIds and status__c != 'Completed'];
       for (Salesforce_Ticket__c st : listSt){
           st.Status__c = 'Completed';
       }
       if(!listSt.isEmpty()){
           update listST;
       }
       
   }

   public static void createDefaultSalesforceTicket1(list<Salesforce_Project__c> spTriggerNew){
    try{
     List <Salesforce_Ticket__c> listST = new List<Salesforce_Ticket__c>();

     for(Salesforce_Project__c sp: spTriggerNew){
     DefaultTicketInfo__c ticketInfo = DefaultTicketInfo__c.getOrgDefaults();
     Salesforce_Ticket__c st = new Salesforce_Ticket__c();
     st.Subject__c = ticketInfo.Subject__c;
     st.Description__c = ticketInfo.Description__c;
     st.Salesforce_Project__c = sp.Id;
     st.Priority__c = 'High';
     listST.add(st);
    }
if(!listST.isEmpty()){
  insert listST;
}

}catch (Exception ex){
    for(Salesforce_Project__c sp : spTriggerNew){
        sp.addError('Error in default ticket creation. Please contact your admin.');
    }
}
}
}