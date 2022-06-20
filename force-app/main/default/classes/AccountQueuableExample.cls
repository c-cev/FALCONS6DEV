/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-20-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class AccountQueuableExample implements Queueable {
    public list<Account> listAccount;
    //constructoe accepting ist of accountl
    public AccountQueuableExample(list<account> accList){
        listAccount = accList;
    }
    //implement execute method is mandatory
    public void execute(QueueableContext qc){
        for(account a: listAccount){
            a.Name = a.Name+'----SI';
        }
        update listAccount;
    }
}
