/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-25-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

public class TurkishLesson3 {
    Public Void welcome(){
        system.debug('Hosgeldiniz..');
    }
    
    public string firstName;
    public string lastName;
    public string classcName = 'New Batch';
    private string courseName = 'SoftInnovas';

    public string driverLicense(integer age){
        string msg = ' ';
        if (age<18) {
            msg = 'You cannot get DL';
        } else {
            msg = 'You can get DL';
        }
        return msg;
    }

    public void numberZero(integer z){
        if (z>0) {
            system.debug('z is positive');
            
        } else if(z<0){
            system.debug('z is negative');
        } else{
            system.debug('z is zero');
        }

    }

}
