/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-23-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

public class Candidates {
    public string Name;
    public string Gender;
    public static string CompanyName;

    public void printCandidate(){
        system.debug('Candidate name is '+ Name + '('+ Gender + ')');
        system.debug('Company name is '+CompanyName);
    }

    public static void printCandidatesInfoSt() {
        system.debug('Company name is '+CompanyName);
        
    }
}
