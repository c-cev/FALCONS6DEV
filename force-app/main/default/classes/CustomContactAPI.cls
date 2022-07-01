/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 07-01-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@restResource(urlMapping = '/ContactCustom/*')
global class CustomContactAPI {
    //return contact details and account name
    @httpGet
    global static Contact getContactId(){
        System.debug('custom contact api call succsess');
        //GET URI
        RestRequest Request = RestContext.Request;
        string uri= Request.requestURI; 
        System.debug('URI: '+Request.requestURI); 
        //Fetch contact ID from URI
        Integer idStartIndex = uri.lastIndexOf('/')+1;
        System.debug('idStartIndex: '+idStartIndex);
        string contactId = uri.substring(idStartIndex);
        System.debug('contactId: '+contactId);
        //Fetch contact details from contact ID
        contact c = [select name, email, phone, account.Name from contact where id= :contactId];
        return c;
    }

    @httpPost
    global static Id createContact(string fName, string lName, string emailId, string phoneNumber, string accountId){
        contact c = new contact();
        c.firstName = fname;
        c.lastName = lname;
        c.email = emailId;
        c.Phone = phoneNumber;
        c.AccountId = accountId;
        insert c;
        return c.id;
    }

    @httpDelete
    global static String deleteContact(){
        System.debug('custom contact api call succsess');
        //GET URI
        RestRequest Request = RestContext.Request;
        string uri= Request.requestURI; 
        System.debug('URI: '+Request.requestURI); 
        //Fetch contact ID from URI
        Integer idStartIndex = uri.lastIndexOf('/')+1;
        System.debug('idStartIndex: '+idStartIndex);
        string contactId = uri.substring(idStartIndex);
        System.debug('contactId: '+contactId);
        //Fetch contact details from contact ID
        contact c = new contact(id = contactId);
        delete c;
        return 'contact deleted with Id: '+ contactId;
    }

    @httpPatch
    global static String updateContact(string emailId, string phoneNumber){
        System.debug('custom contact api call succsess');
        //GET URI
        RestRequest Request = RestContext.Request;
        string uri= Request.requestURI; 
        System.debug('URI: '+Request.requestURI); 
        //Fetch contact ID from URI
        Integer idStartIndex = uri.lastIndexOf('/')+1;
        System.debug('idStartIndex: '+idStartIndex);
        string contactId = uri.substring(idStartIndex);
        System.debug('contactId: '+contactId);
        //Fetch contact details from contact ID
        contact c = new contact();
        c.Id = contactId;
        c.email = emailId;
        c.phone = phoneNumber;
        update c;
        return 'contact updated with Id: '+ contactId;
    }

    @httpPut
    global static List<id> upsertContact(List<Contact> cons){
        string returnString;
    
        upsert cons;
        list<id> ids = new list<id>();
        for (contact con : cons) {
            ids.add(con.id);
        }
        return ids;

    }
}