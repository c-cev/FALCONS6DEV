string jsonAccountString = '{"Name":"JsonToApex", "Type":"Prospect", "AnnualRevenue":50}';
Object ob = JSON.deserialize(jsonAccountString, Account.Class);
Account acc= (Account) ob;
insert acc;