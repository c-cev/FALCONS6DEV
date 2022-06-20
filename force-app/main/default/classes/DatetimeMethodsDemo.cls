/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-14-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

public class DatetimeMethodsDemo {

 public void printOfferEndDateTime(){
     datetime dtNow = datetime.now();

     datetime dtOfferEnd = dtNow.addHours(51);
     system.debug('offer end hour is '+ dtOfferEnd);
 }



public void printSubscriptionEndDate(){
    date subscriptionStartDate = date.today();
    date subscriptionEndDate = subscriptionStartDate.addDays(1000);
    system.debug('subscription end date is '+ subscriptionEndDate);
    integer endDateYear = subscriptionEndDate.year();
    Integer endDateMonth = subscriptionEndDate.month();
    system.debug('subscription end year is '+ endDateYear);
    system.debug('subscription end month is '+ endDateMonth);


}




    // public void calculateAgeInMonths(){
    //     system.debug('Calculate age in months');
        
    //     date birthDate = date.newInstance(1978, 01, 05);
    //     date todayDate = date.today();
    //     integer ageInMonths = birthDate.monthsBetween(todayDate);
    //     system.debug('My age in months is '+ ageInMonths);

    //     integer ageInDays = birthDate.daysBetween(todayDate);
    //     system.debug('My age is in days is '+ageInDays);
    // }
}
