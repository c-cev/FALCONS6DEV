/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-25-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class OperatinosHelper {
    public Decimal largestOutOfTwoNumbers(decimal dec1, decimal dec2) {
      decimal largestDecimal;
      if(dec1>dec2){
          largestDecimal=dec1;
      } else {
          largestDecimal=dec2;
      }

      return largestDecimal;
    }
    public Decimal smallestOutOfThreeNumbers(Decimal decA, Decimal decB, Decimal decC) {
        decimal smallestNumber;
        if (decA<decB && decA<decC) {
            smallestNumber = decA;
        }else if (decB<decA && decB<decC) {
            smallestNumber = decB; 
        } else {
            smallestNumber = decC;
        }
        return smallestNumber;
    }
    
}
