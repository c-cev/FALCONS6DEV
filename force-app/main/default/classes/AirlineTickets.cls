/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-25-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class AirlineTickets {
    public string departureCity;
    public string arrivalCity;
    public string flightNumber;
    public string seatAssigned;
    
    public void printTicket(){
    system.debug('this ticket is journey from '+departureCity + ' to '+ arrivalCity);
    }
}