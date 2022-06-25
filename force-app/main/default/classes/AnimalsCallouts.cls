/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-24-2022
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
}
