/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-09-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class PrimitiveDataTypeDemo {
   public void printBasicDataType(){
       string batchName = 'Falcons6';
       integer totalCandidates = 40;
       boolean isAdminCompleted = true;
       
       system.debug('batch name is ' + batchName);
       system.debug('total of candidates: ' + totalCandidates);
       system.debug('admin completed? '+isAdminCompleted);

       Decimal decValue = 76.98;
       system.debug('decimal value is '+ decValue);
      
       
       Object obj = 'This is a string';
       Object obj2 = 10;
       ID id1 = '001D000000Ju1zH';
       system.debug(obj);
       system.debug(obj2);
       system.debug('SF ID number is '+ id1);
   }
}
