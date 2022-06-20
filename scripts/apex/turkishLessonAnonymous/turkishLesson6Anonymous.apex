//farkli 5 sehir ve 7 gunluk sicaklik degerlerini yazan bir map olustur
Map<String, List<decimal>> cityTemp = new Map<String, List<decimal>>();
List<decimal> istanbulTemp = new List<decimal>{10.5,7,6,4.5,7.8,23,12};
cityTemp.put('Istanbul', istanbulTemp);


List<decimal> NJTemp = new List<decimal>{10,-7,6,-4.5,7.8,13,12};
cityTemp.put('New Jersey', NJTemp);
List<decimal> MiamiTemp = new List<decimal>{60,37,6,44.5,37.8,73,112};
cityTemp.put('Miami', MiamiTemp);
system.debug(cityTemp);

System.debug('Miami 7 gunluk sicaklik degereleri : '+ cityTemp.get('Miami'));

for(string key :cityTemp.keySet()){
system.debug(key + cityTemp.get(key));
}

//sehrin 7 gunluk sicaklik average lari
Map<String,decimal> tempAver = new Map<string, decimal>();
for(string key :cityTemp.keySet()){
    decimal sum =0;
    for(decimal eachTemp: cityTemp.get(key)){
        sum+=eachTemp;
    }
    Decimal aver = sum/cityTemp.get(key).size();
    tempAver.put(key, aver.setScale(2));
   
}
 System.debug(tempAver);

 //sicaklik average 10 dan buyuk ve kucukler diye listele

 Set<string> lessThan10 = new Set<string>();
 Set<string> moreThan10 = new Set<string>();
for(string city: cityTemp.keySet()){
    if (tempAver.get(city)>10){
        moreThan10.add(city);
    } else{
        lessThan10.add(city);
    }
}
system.debug('average is more than 10 ' +morethan10);
system.debug('average is less than 10 ' +lessthan10);