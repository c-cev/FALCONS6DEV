List<String> colorList = new List<String>(); 
colorList.add('White');
colorList.add('Red');
colorList.add('Blue');
colorList.add('Green');
colorList.add('Brown');
system.debug('color lists colors are '+colorList);
//color list size
integer size = colorList.size();
system.debug('color list size is '+colorList.size());
//contains Red
Boolean containsRed = colorList.contains('Red');
system.debug('contains Red--> '+colorList.contains('Red') );
//Last Element to upper case
string lastElement =colorList.get(size-1);
system.debug('last element in upper case '+ lastElement.toUpperCase());
//4th element in upper case
colorList[3]=colorList[3].toUpperCase();
system.debug('fourth element in upper case '+colorList);
//color code list
List<String> colorCodeList = new List<String>{'SS000', 'SS001', 'SS002', 'SS003', 'SS004'};
system.debug('color code list '+colorCodeList); 
Boolean areTwoListEqual = colorCodeList.equals(colorList);
system.debug('Are two list equal? '+areTwoListEqual);
//merge two list
List<string> mergedList = new List<String>();
mergedList.addAll(colorList);
mergedList.addAll(colorCodeList);
system.debug('merged list is --> '+mergedList);

