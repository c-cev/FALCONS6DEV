Car carObj1 = new car();
carObj1.switchOn();

car bm = new car();
    bm.carColor = 'black';
    bm.carName = 'bmw';
    bm.switchOn();
    system.debug('car obj1= '+bm);
    //bm.maxSpeedKMperHour=150;
   
    car lm = new car();
    lm.carColor = 'red';
    lm.carName ='mercedes';
    lm.switchOn();
    system.debug('car obj2= '+lm);
    lm.maxSpeedKMperHour=100;

    car vw = new car();
    vw.carColor = 'white';
    vw.carName = 'polo';
    vw.drive();
    vw.driveAtMaxSpeed();
    system.debug('vw '+vw);
