/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-25-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class AnimalsCalloutsTest {
    @isTest
    private static void testFetchAnimalsSuccess(){
        AnimalsHttpCalloutMock am = new AnimalsHttpCalloutMock();
        Test.setMock(HttpCalloutMock.class, am);

        Test.startTest();
        HttpResponse response = AnimalsCalloutResponse.fetchAnimals2();
        Test.stopTest();

        System.assertEquals(200, response.getStatusCode());
    }
  
}
