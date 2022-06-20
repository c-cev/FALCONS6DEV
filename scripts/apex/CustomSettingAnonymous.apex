map<string, country_code__c> mapCC = country_code__c.getAll();
System.debug('map of country code = '+mapCC);
for(string eachCountry : mapCC.keySet()){
    System.debug('country= '+ eachCountry +', code= '+ mapCC.get(eachCountry).country_code__c);
}