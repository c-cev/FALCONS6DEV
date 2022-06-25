Account a= new account();
a.Name = 'Mona';
a.phone = '';
a.AnnualRevenue = 987899;

Account b= new account();
b.Name = 'Lisa';
b.phone = '1309876570';
b.site = ' ';

List<account> ab = new List<account>{a,b
};
string accountJSON1 = JSON.serialize(ab);
System.debug(accountJSON1);

list <account> listAccount = [select id, name, phone, site, annualrevenue from account limit 5];
string accountJSON22 =JSON.serialize(listAccount);
System.debug(accountJSON22);