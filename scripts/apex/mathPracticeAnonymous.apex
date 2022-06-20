Map<String,Date> dateList= new  Map<String,Date>();
dateList.put('David', date.newInstance(1965, 11, 02));
dateList.put('Sam', date.newInstance(1973, 05, 15));
dateList.put('Maria', date.newInstance(1978, 08, 23));
dateList.put('Alex', date.newInstance(1933, 02, 28));
dateList.put('Shelly', date.newInstance(1992, 12, 24));

Map<String,Date> emptydateList= new  Map<String,Date>();
MathPractice.ageCalculate(dateList);
MathPractice.ageCalculate(emptydateList);