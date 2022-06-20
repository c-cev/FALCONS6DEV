TurkishLesson3 t3 = new TurkishLesson3();
t3.welcome();
t3.firstName = 'John';
system.debug('t3 object = > '+t3);

TurkishLesson3 l3 = new TurkishLesson3();
l3.firstName = 'Joe';
l3.lastName = 'Done';
system.debug('l3 object =>> '+ l3);

TurkishLesson3 DL = new TurkishLesson3();
//string message = DL.driverLicense(15);
system.debug(DL.driverLicense(13));
TurkishLesson3 DL1 = new TurkishLesson3();
string message1 = DL1.driverLicense(18);
system.debug(message1);

TurkishLesson3 num = new TurkishLesson3();
num.numberZero(5);
num.numberZero(-15);
num.numberZero(0);


