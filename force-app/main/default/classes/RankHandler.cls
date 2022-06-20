/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-24-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class RankHandler {
    public string rankPrize(integer rank) {
        string prize = '';
      if(rank==1){
          prize='Gold';
      } else if (rank==2) {
          prize='Silver';
      } else if (rank==3){
          prize = 'Bronz';
      } else if(rank <=10){
          prize = 'Top 10 certificates';
      } else {
          prize ='Participation certificate';
      }
    
      return prize;
    }

    public string rankPrizeSwitch(integer rank) {
        String prize='';
        switch on rank {
            when 1 {
                prize = 'Gold';
            }
            when 2{
                prize = 'Silver';
            }
            when 3{
                prize = 'Bronze';
            }
            when 4,5,6,7,8,9,10 {
                prize = 'Top 10 certifcates';
            }
            when else {
                prize= 'Participation certificate';
            }
        }
    }
}
