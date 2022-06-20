/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-14-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class primitiveDataTypeDemo2{
    public void printNewDateTime(){
        Date today = date.today();
        Time newTime = time.newInstance(2, 35, 22, 34);
        datetime dt1 = datetime.newInstance(today, newTime);
        system.debug('date time1 is '+ dt1);

        dateTime currentDT=dateTime.now();
        system.debug('current DT is '+currentDT);

        Long longTime= (1341828183000L); 
        Datetime dt4 = Datetime.newInstance(longTime);      
        system.debug('dt4 '+dt4);

    }

    // public void printNewTime(){
    //     Time myTime = Time.newInstance(12, 27, 35, 30);
    //     system.debug('my time is ' + myTime);
    //     Time myTime2 = Time.newInstance(8, 46, 57, 09);
    //     system.debug('my time2 is '+ myTime2);
        
    // }
}
