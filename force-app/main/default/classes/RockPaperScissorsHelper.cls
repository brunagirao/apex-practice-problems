/************************************************************************************************
* Name      : RockPaperScissorsHelper
* Purpose   : Challenge 12 - Rock Paper Scissors: Rock beats scissors, scissors beats paper, paper 
              beats rock. Implement the method rockPaperScissors that takes as parameters two strings 
              player1 and player2 representing the moves played by player 1 and player 2, valid moves 
              being 'rock', 'paper', and 'scissors'. Return 1 if player 1 wins, 2 if player 2 wins, 
              and 0 if no one wins.
* TestClass : RockPaperScissorsHelperTest
* Author    : Bruna Girão
* Date      : 19-10-2023
***************************************************************************************************/
public with sharing class RockPaperScissorsHelper {

    public Integer rockPaperScissors(String player1, String player2) {
        if(String.isBlank(player1) || String.isBlank(player2)) return 0;
    
        String p1 = player1.toLowerCase();
        String p2 = player2.toLowerCase();
    
        Set<String> validValues = new Set<String>{'rock', 'scissors', 'paper'};
    
        if(!validValues.contains(p1) || !validValues.contains(p2) || p1.equals(p2)) return 0;
    
        
        if(  (p1 == 'rock'     && p2 == 'scissors')
          || (p1 == 'paper'    && p2 == 'rock')
          || (p1 == 'scissors' && p2 == 'paper')
        ) {
           return 1;
        }
        
        if(
           (p1 == 'rock'     && p2 == 'paper')
        || (p1 == 'paper'    && p2 == 'scissors')
        || (p1 == 'scissors' && p2 == 'rock')
        ) {
            return 2;
        } 

        return 0;
    }
}