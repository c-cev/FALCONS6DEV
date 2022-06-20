/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-19-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class Calculator {
    public static void welcomeMessage() {
        system.debug('Welcome to Apex Calculator');
      }
      public static void printNewMessage (string msg){
      system.debug(msg);
}
public static integer add(integer a, integer b){
  integer sum= a+b;
  return sum;
}

public static integer add(integer a, integer b, integer c){
  return a+b+c;
}

// public decimal dynamicCalculationMethod (decimal x, decimal y, string z){
//   decimal result;
//   switch on z {
//     when 'addition'{
//     result = x+y;
//     }
//     when 'substraction' {
//     result = x-y;
//     }
//     when 'multipication'{
//     result = x*y;
//     }
//     when 'division' {
//     result = x/y;
//     }
//     when else {
//     system.debug('invalid');
//     }
//   }
//   return result;
//}
public static Integer add(List<Integer> intList){
  Integer sum = 0;
    for(Integer eachInt : intList){
      sum += eachInt;
    }

  return sum;
}

}