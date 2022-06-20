public class DmlDemo2 {
    public static void dmlMultipleRecordUpdate_right() {
        List<account> listAcc = [select id, name, description from account ORDER BY createdDate limit 150];
        List<account> updateAccounts = new List<account>();
        for (account acc : listAcc) {
            acc.Name +='vB';
            acc.Description ='Update vie bulk DML';
            updateAccounts.add(acc);
            
        }
        if (!updateAccounts.isEmpty()) {
            update updateAccounts;
            
        }
    }
}