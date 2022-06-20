DmlDemo.dmlInsertDemo_stndObj();
DmlDemo.dmlInsertDemo_cstmObj();
DmlDemo.dmlUpdateDemo_1();
DmlDemo.dmlUpdateDemo_3();
DmlDemo.dmlInsertDemo_2();

DmlDemo.dmlMultipleRecordInsert_right();
DmlDemo.dmlMultipleRecordInsert2_right();

List<case> listCase = new list<case>();

for(Integer i=0; i<205; i++){
    case c = new case();
    c.Subject= 'There is a bug';
    c.Description = 'Resolve it';
    c.Status = 'New';
    c.Origin = 'Web';
}
insert listCase;

List<case> updatecase = [select id, status from case where Status = 'New'];
for (case c : updatecase){
    c.Status = 'Working';
}
update updateCase;
