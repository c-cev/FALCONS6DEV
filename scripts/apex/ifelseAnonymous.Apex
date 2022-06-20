RankHandler rh = new RankHandler();
string won = rh.rankPrize(3);
system.debug(won);
string won2 = rh.rankPrize(50);
system.debug(won2);

RankHandler r = new RankHandler();
system.debug(r.rankPrizeSwitch(2));
system.debug(r.rankPrizeSwitch(10));
system.debug(r.rankPrizeSwitch(100));
