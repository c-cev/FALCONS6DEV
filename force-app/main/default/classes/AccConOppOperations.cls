/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-09-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

public class AccConOppOperations {
   public static List<Account> allAccount(string X){
       List<account> listAcc = [select name, id from account where id in (select accountid from opportunity where stagename =:X)];
       return listAcc;
    }

    public static List<account> allContact(){
        List<account> listAcc = [select name, id from account where id in (select accountid from contact)];
        return listAcc;
    }
}