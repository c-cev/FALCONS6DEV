/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-16-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

public  class Car {
    public string carColor='';
    public string carName ='';
    private integer maxSpeedMperHour = 150;
    
    public void drive(){
system.debug('driving '+carName);
    }

    public void driveAtMaxSpeed(){
        string drivingDescription = 'driving '+carName+ ' at  '+maxSpeedKMperhour+ ' km/h';
        system.debug(drivingDescription);
    }
    

    public void switchOn(){
        system.debug('starting the car.');
    }
}
