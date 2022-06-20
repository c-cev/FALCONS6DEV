/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-23-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

public class Cat {
    public string name;
    public string color;
    public Cat() {
      system.debug('constructor called.');
    }
    public Cat(string n, string c){
        this.name = n;
        this.color = c;
        sleeping();
    }
    public void sleeping(){
        system.debug(name+ ' is sleeping');
    }
    public static void allCats(){
       List<cat> cats = new list<cat>();
       cat falconsCat = new cat('fluffykins', 'white');
       cat vitapsCat = new cat('Simba', 'brown');
       cats.add(falconsCat);
       cats.add(vitapsCat);
       system.debug('all cats are '+ cats);
    }
}
