/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-25-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class DummyPostCallout {
    private static string GET_DUMMYPOST__ENDPOINT = CalloutInfo__mdt.getInstance('GET_DUMMYPOST').Endpoint__c;
    private static string HTTP_GET = 'GET';
    private static string HTTPPOST = 'POST';   
    
    public Static Void PostCallout() {
    //1. Create Request
    HttpRequest request = new HttpRequest();
    request.setEndpoint('GET_DUMMYOST_ENDPOINT');
    request.setMethod('HTTP_GET');

    //2. Prepare HTTP
    http http= new http();
    
    //3. Send Request, Get Response
    HttpResponse response = http.send(request); 
    System.debug(response);
    if (response.getStatusCode()== 200) {
        System.debug(response.getBody());
        
    } else{
        System.debug(response.getStatus());
    }

    }
}
 