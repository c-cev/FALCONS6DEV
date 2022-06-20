/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-25-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class SetDemo {
    public static void citySet(){
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Lisbon');
        cities.add('Tokyo');
        cities.add('Berlin');
        system.debug('set of cities '+cities);
    }
    public static void randomInteger(){
    Set<integer> setInteger = new Set<integer>();
    setInteger.add(10);
    setInteger.add(15);
    setInteger.add(21);
    setInteger.add(10);
    setInteger.add(21);
    setInteger.add(15);
    system.debug('set of random ineteger '+ setInteger);
    }

    public static set<integer> setFormList(list<integer>intList){
        Set<integer> intSet = new Set<Integer>();
        intSet.addAll(intList);
        return intSet;
    }
// to upper case
    public static Set<String> capitalizeSet(Set<String> setString){
        Set<String> upperCaseSet = new Set<String>();
        for (string eachString : setString) {
            string tempStr = eachString.toUpperCase();
            upperCaseSet.add(tempStr);
       }
       return upperCaseSet;
    }
}