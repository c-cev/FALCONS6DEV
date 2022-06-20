TurkishLesson2 tl = new TurkishLesson2();
tl.welcome('Hasan');
tl.welcome('Ali');
tl.welcome('Veli');

TurkishLesson2 tl4 = new TurkishLesson2();
integer lnt = tl4.stringMethod('Hello World');
system.debug(lnt);

TurkishLesson2 totKitapFiyat = new TurkishLesson2();
decimal toplamUcret = totKitapFiyat.price('hayat Guzel', 23.35, 100);
system.debug(toplamUcret);
