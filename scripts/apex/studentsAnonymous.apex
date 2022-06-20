Students si = new Students();
si.firstName = 'Matt';
si.lastName = 'Johnson';
si.classYear = 2020;
si.major = 'Math';
string returnMajor = si.generateReport();
system.debug('returned major is '+returnMajor);

Students si1 = new Students();
si1.firstName = 'Ali';
si1.lastName = 'Veli';
si1.classYear = 2021;
si1.major = 'Arts';
string returnMajor1 = si1.generateReport();
system.debug('returned major is '+returnMajor1);
