/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-25-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class AnimalsHttpCalloutMock implements HttpCalloutMock {
    public HttpResponse respond(HttpRequest request){
        HttpResponse response = new HttpResponse();
        response.setHeader('content-Type', 'application-json');
        response.setBody('{"animals":["monkey", "donkey", "dog", "cat"]}');
        response.setStatusCode(200);
        return response;

    }

}
