/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-24-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class AnimalsCalloutResponse {
    public list<string>animals;

    public static HttpResponse fetchAnimals2() {
        // 1.prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');


        // 2.Prepare http
        Http http = new http();

        // 3.send request, receive request
        HttpResponse response = http.send(request);

        // 4.process the response
        if (response.getStatusCode() == 200){
            AnimalsCalloutResponse animalResponse = (AnimalsCalloutResponse)JSON.deserialize(
           response.getBody(), AnimalsCalloutResponse.class);
            system.debug('======String animals list START======');
            for(string a : animalResponse.animals){
                system.debug(a);
            }
            system.debug('======String animals list END======');

           
        } else {
            // Not Success
            system.debug('something went wrong guys!!!');
        }
        return response;

    }

}
