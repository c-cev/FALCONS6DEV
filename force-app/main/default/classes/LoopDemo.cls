/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-21-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class LoopDemo {
    public void print_int_while() {
        integer count =1;
        while (count<=25) {
            system.debug(count);
            count++;
        }
    }
    public void print_N_numbers(integer n){
        for (Integer i = 0; i < n; i++) {
         system.debug(i);
        }
    }
    public void print_s_N_numbers(integer n){
        integer sum=0;
        for (Integer i =1; i<=n; i++){
            sum+=i;
        }
            system.debug(sum);
    }
    public void print_N_Odd_numbers(integer startInt, integer endInt){
       for (Integer i=startInt; i<= endInt; i++) {
         integer modI = math.mod(i, 2);
         if(modI==1) system.debug(i);  
       }
    }
}
