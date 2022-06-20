/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 06-09-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class AccountQueuableExample implements Queueable {
    public list<Account> listAccount;

    public AccountQueuableExample(list<account> accList){
        listAccount = accList;
    }
    public void execute(QueueableContext qc){
        for(account a: listAccount){
            a.Name = a.Name+'----SI';
        }
        update listAccount;
    }
}
