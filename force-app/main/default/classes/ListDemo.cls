/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-23-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class ListDemo {
    public static string candidatesList(integer indx){
        List<string> listCandidates = new List<string>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        system.debug('Candidates are '+listCandidates);

        // string valueAt3 = listCandidates.get(3);
        // system.debug('value at index 3 is '+ valueAt3);
        // string value2At3 = listCandidates[3];
        // system.debug(' value at index 3 is '+ value2At3);
        string retrnString =''; 
        if (indx>=0 && indx<listCandidates.size()) {
            retrnString = listCandidates[indx];
        }
        else {
            retrnString = 'No value found';
            
        }
        
        return retrnString;

    }
    public static void randomIntegerList(){
        List<integer> listInteger = new List<integer>();
        listInteger.add(15);
        listInteger.add(10);
        listInteger.add(21);
        listInteger.add(21);
        system.debug('List of random integers are '+listInteger);

        integer index3Value = listInteger.get(3);
        Integer index3Value2 = listInteger[3];
            
        system.debug('index 3 value is '+index3Value);
        system.debug('index 3 value is '+index3Value2);
    }

    public static void iterateIntegerList(){
        List<integer> listInteger = new List<integer>();
        listInteger.add(25);
        listInteger.add(110);
        listInteger.add(211);
        listInteger.add(2120);
        listInteger.add(786);
        for (Integer eachInteger : listInteger){
            system.debug(eachInteger);
        }
        
    }
}
