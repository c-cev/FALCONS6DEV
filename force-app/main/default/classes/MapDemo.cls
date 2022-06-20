/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-27-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

public class MapDemo {
    public static string retrieveMonth(integer m){
        string monthName='';
        Map<Integer, string> monthMap = new Map<Integer, string>();
        monthMap.put(1,'January');
        monthMap.put(2,'February');
        monthMap.put(3,'March');
        monthMap.put(4,'April');
        monthMap.put(5,'May');
        monthMap.put(6,'June');
        monthMap.put(7,'July');
        monthMap.put(8, 'August');
        monthMap.put(9,'September');
        monthMap.put(10,'October');
        monthMap.put(11,'November');
        monthMap.put(12,'December');

        if (monthMap.containsKey(m)) {
            monthName=monthMap.get(m);
        }else {
            monthName='No such month exist.';
        }
              
        return monthName;
    }
    
}