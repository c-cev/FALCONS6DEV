try {
account a = new account();
insert a;
} catch (DmlException dex){
System.debug('DML went wrong');
}
catch(Exception ex){
    System.debug('something went wrong');
}
System.debug('Apex is simple?');