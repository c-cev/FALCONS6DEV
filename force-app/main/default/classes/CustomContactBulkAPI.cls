/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-01-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@restResource(urlMapping = '/ContactCustomBulk/*')
global class CustomContactBulkAPI {
    @httpPost
    Global static list<contact> createContacts(
        list<CreateContactWrapper> contacts
    ) {
        list<contact> listContacts = new list<contact>();
        for(CreateContactWrapper con: contacts){
            contact c = new contact();
            c.firstName = con.fname;
            c.lastName = con.lname;
            c.email = con.emailId;
            c.Phone = con.phoneNumber;
            c.AccountId = con.accountId;
            listContacts.add(c);
        }
        insert listContacts;
        return listContacts;
    } 
}
