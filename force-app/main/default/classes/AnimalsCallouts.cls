/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-25-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class AnimalsCallouts {
    public static void fetchAnimals() {
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
            string animalsJSON = response.getBody();
            system.debug(animalsJSON);

            object ob = JSON.deserializeUntyped(animalsJSON);
            Map<string,Object> results = (Map<string, object>)ob;
            system.debug('results = '+results);
            List<Object> animals = (List<object>) results.get('animals');
            system.debug('=========object animals list START===========');
            for (object a: animals){
                system.debug(a);
            }
            system.debug('=======object animals list END=======');
        } else {
            // Not Success
            system.debug('something went wrong guys!!!');
        }

    }
    public static HttpResponse postAnimal() {
        // 1.prepare request
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');

        string jsonReq = '{"name":"fluffykins"}';
        request.setBody(jsonReq);
        request.setHeader('Content-Type', 'application/JSON');
        


        // 2.Prepare http
        Http http = new http();

        // 3.send request, receive request
        HttpResponse response = http.send(request);
        system.debug('status '+response.getStatus());
        system.debug('status code '+response.getStatusCode());

        // 4.process the response
        if (response.getStatusCode() == 201){
            system.debug('response '+response.getBody());
            AnimalsCalloutResponse animalResponse = (AnimalsCalloutResponse)JSON.deserialize(
           response.getBody(), AnimalsCalloutResponse.class);
            system.debug('======String animals list START======');
            list<string> allAnimals = animalResponse.animals;
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
