/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-26-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class TurkishLesson4 {
    public TurkishLesson4(){
        system.debug('create a new object..');

    }
    public static void method1(integer num1, integer num2){
        integer sum = 0;
        integer counter = 0;
        for (integer i=num1; i<num2; i++) {
            counter++;
            sum+= i;
            // system.debug('counter is: '+ counter);
            // system.debug('sum is : '+sum);
            
        }
        system.debug('for loop disi counter is: '+ counter);
        system.debug('for loop disi sum is : '+sum);
        integer average = sum/counter;
        system.debug(average);
    }

    public static void listMethod(){
        List<String> stringList = new List<String>();
        stringList.add('Mike');
        stringList.add('Ayse');
        stringList.add('Mert');
        System.debug(stringList);
        System.debug(stringList[1]);
        System.debug(stringList.get(2));
       
    }
    public static void sumList(){
        //create a list. add 5 number and add them
        List<Integer> list1 = new List<Integer>{2,4,8,-6,23};
        integer sum =0;
        for (integer item: list1) {
            system.debug('===============for loop=========');
            system.debug('items are ; '+item);
            sum+=item;
            system.debug('sum is '+sum);
            
        }
    }
}
