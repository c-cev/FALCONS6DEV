/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-21-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

public class SoqlDemo2 {
    public static void childToParent_Soql1(){
        List<contact> listCnt = [select id, name, account.name from contact where account.industry = 'Energy'];
        for(contact eachContact : listCnt){
            String accName = eachContact.Account.Name;
            system.debug('contact name is '+eachContact.Name+ ' its account is '+ accName);
        }
    }
    public static void sampleSoql4(){
        List<Account> accountWithOppList = [select name, annualrevenue, (select name, amount from opportunities where stagename = 'Closed Won') from account where type = 'Customer - Direct'];
        for (account eachAcc : accountWithOppList) {
            system.debug('account name is '+eachAcc.name+ ', annual revenue is '+eachAcc.AnnualRevenue);
            List<Opportunity> eachAccOpps = eachAcc.Opportunities;
            for (Opportunity opp : eachAccOpps) {
                system.debug('opp name '+opp.Name+ ', opp amount '+opp.Amount);
                }
                system.debug('----------------------');
           }
    }

}
