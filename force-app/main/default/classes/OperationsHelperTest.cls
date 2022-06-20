/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-22-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@istest
public class OperationsHelperTest {
   @istest
    public static void largestOutOfTwoNumbersTest() {

        OperationsHelper x=new OperationsHelper();
        decimal y =x.largestOutOfTwoNumbers(10, 9);
        system.assertEquals(10,y );

        decimal a=x.largestOutOfTwoNumbers(2,12);
        system.assertEquals(12, a);

    }
    @istest 
    public static void smallestOutOfThreeNumbersTest(){

        OperationsHelper x=new OperationsHelper();
        decimal three=x.smallestOutOfThreeNumbers(11, 20, 25);
        system.assertEquals(11, three);

        decimal three1=x.smallestOutOfThreeNumbers(25, 3, 24);
        system.assertEquals(3, three1);

        decimal three2=x.smallestOutOfThreeNumbers(25, 22, 6);
        system.assertEquals(6, three2);

    }

    @istest 
    public static void sumofPositiveIntegersTest(){

        OperationsHelper x=new OperationsHelper();
        integer sum=x.sumofPositiveIntegers(-5);
        system.assertEquals(null, sum);

        integer sum1=x.sumofPositiveIntegers(2);
        system.assertEquals(3, sum1);

    }

    @istest 
    public static void  sumofPositiveIntegersTest1(){

        OperationsHelper x=new OperationsHelper();
        integer sum=x.sumofPositiveIntegers(2, 4);
        system.assertEquals(9, sum);
    }

     @istest 
     public static void  sumofListValuesTest(){

        OperationsHelper x=new OperationsHelper();
        list<decimal> listDc=new List<decimal>{5,8,9,10,15,16};
        decimal sum=x.sumofListValues(listDc);
        system.assertEquals(63,sum);
        
        list<decimal> listDc1=new list<decimal>();
        decimal sum1=x.sumofListValues(listDc1);
        system.assertEquals(null, sum1);
     }  

     @istest 
     public static void averageOfListValuesTest(){

        OperationsHelper x=new OperationsHelper();
        list<decimal> listDc=new List<decimal>{8,10,12};
        decimal average=x.averageOfListValues(listDc);
        system.assertEquals(10, average);

     }

     @istest 
     public static void highestOfListValuesTest(){

        OperationsHelper x=new OperationsHelper();
        list<decimal> listDc=new List<decimal>{8,10,12,26,5};
        decimal highestValue=x.highestOfListValues(listDc);
        system.assertEquals(26,highestValue);


     }
     @istest 
     public static void lowestOfListValuesTest(){
        
        OperationsHelper x=new OperationsHelper();
        list<decimal> listDc=new List<decimal>{8,10,12,26,5};
        decimal lowestValue=x.lowestOfListValues(listDc);
        system.assertEquals(5,lowestValue);


     }

     @istest 
     public static void reverseOrderPrintTest(){

        OperationsHelper x=new OperationsHelper();
        list<object> listDc=new List<object>{8,10,9.8,8.7, 'table','chair'};
        x.reverseOrderPrint(listDc);

        list<object> listDc1=new list<object>();
        x.reverseOrderPrint(listDc1);

     }




}