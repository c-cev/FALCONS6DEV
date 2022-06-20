/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-24-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class TurkishLesson {
    public void generalThings(){
        string str = 'Welcome to Salesforce';
        System.debug(str);
    }

    public void strMethods(){
        string s = 'Hello Max';
        string s2 = s.capitalize();
        System.debug(s2);

        string strg = 'weather is good';
        integer len = strg.length();
        system.debug('the length is '+ len);

    }

    public void dateMethods(){
      date myDate = date.today();
      system.debug(myDate);

      date add10Days = myDate.addDays(10);
      date add20Months = myDate.addMonths(20);
      date add30YilOnce = myDate.addYears(-30);
      system.debug(add10Days);
      //same as above
      system.debug(myDate.addDays(10));
      system.debug(add20Months);
      system.debug(add30YilOnce);
    
    }
}
