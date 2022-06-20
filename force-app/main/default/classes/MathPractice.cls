/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-28-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class MathPractice {
  public static void ageCalculate(Map<String, Date> birthDayList){
      map<string, decimal> newAgeList =new map<string, decimal>();
      if (birthDayList.size()>0) {
          //date today = date.today();
          decimal age;
          //decimal betweenAge;
          for(string dt: birthDayList.keySet()){
              age = birthDayList.get(dt).daysBetween(date.today());
              newAgeList.put(dt, (age/365).setScale(1));
          }
          //print age
          for(string ageList: newAgeList.keySet()){
              system.debug(ageList+ ' in yasi = '+newAgeList.get(ageList));
          } 
      } else {
          system.debug('Your date list is empty!!!');
      }
    
    }
}
