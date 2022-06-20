/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-25-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

public class TurkishLesson2 {
 public void welcome(string nm){

    system.debug(nm +' hosgeldin..');
 }

 public integer stringMethod(string str){
     System.debug(str);
     return str.length();
 }

 public Decimal price(string kName, decimal kFiyat, integer kAdet){
     decimal total = kFiyat * kAdet;
     system.debug('Total ucret for all the book is ' +total);
     return total;
 }
}
