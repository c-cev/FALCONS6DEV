/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-19-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class CalculatorTest {
   @isTest
   private static void testMessage(){
       Calculator.welcomeMessage();
       Calculator.printNewMessage('this is from a test method');
       
   }
   @isTest
private static void addTest(){
     integer i=10;
     integer j=15;
     Calculator.add(i,j);
     integer calAdd = Calculator.add(i,j);
     system.assertEquals(25, calAdd);
    } 
    @isTest
    public static void addTest3(){
        List<Integer> ListInt = new List<Integer>{15,15,15};
        integer calcAdd = Calculator.add(ListInt);
        system.assertEquals(45,calcAdd);
    }
}

