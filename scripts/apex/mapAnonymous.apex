map<string, string> mapCntCurrency = new map<string, string>();
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkey', 'Lira');
mapCntCurrency.put('ElSalvador', 'BTC');
system.debug('map of country currency '+ mapCntCurrency);

string turkeyCurrency = mapCntCurrency.get('Turkey');
string indiaCurrency = mapCntCurrency.get('India');
system.debug('turkeys currency is '+turkeyCurrency);
system.debug('indias currency is '+indiaCurrency);

//keySet Method and Values
Set<string> countrySet = mapCntCurrency.keySet();
system.debug('countries in map= '+countrySet);
List<string> currencyList = mapCntCurrency.Values();
system.debug('currencies in map= '+currencyList);

//for loop

for(string eachKey: countrySet){
    String eachCurrency = mapCntCurrency.get(eachKey);
    string printString ='country is '+eachKey+' and its currency is '+eachCurrency ;
    system.debug(printString);
}
