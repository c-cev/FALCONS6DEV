/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-25-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class Students {
    public string firstName;
    public string lastName;
    public Integer classYear;
    public string major;

    public string generateReport(){ 
        system.debug('report is geberated for '+firstName +' '+ lastName+' for '+classYear);
        return major;
    }
}
