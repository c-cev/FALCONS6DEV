// AccountsBatch ab = new AccountsBatch();
// database.executeBatch(ab, 50);

List<Account> accs = [select id, name from account];
AccountQueuableExample qa = new AccountQueuableExample(accs);
id jobId = system.enqueueJob(qa);
System.debug('job id is '+jobId);