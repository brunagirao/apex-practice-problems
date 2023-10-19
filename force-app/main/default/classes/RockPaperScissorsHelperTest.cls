/************************************************************************************************
* Name      : RockPaperScissorsHelperTest
* Purpose   : Test Class of RockPaperScissorsHelper
* Author    : Bruna Girão
* Date      : 19-10-2023
**************************************************************************************************/
@IsTest
public with sharing class RockPaperScissorsHelperTest {
    
    @IsTest
    static void rockPaperScissorsNullInputTest() {

        //Given
        String player1;
        String player2;

        //When
        Test.startTest();
        RockPaperScissorsHelper helper = new RockPaperScissorsHelper();
        Integer result = helper.rockPaperScissors(player1, player2);
        Test.stopTest();

        //Then
        System.Assert.areEqual(0, result);
    }


    @IsTest
    static void rockPaperScissorsBlankInputTest() {

        //Given
        String player1 = '';
        String player2 = '';

        //When
        Test.startTest();
        RockPaperScissorsHelper helper = new RockPaperScissorsHelper();
        Integer result = helper.rockPaperScissors(player1, player2);
        Test.stopTest();

        //Then
        System.Assert.areEqual(0, result);
    }

    @IsTest
    static void rockPaperScissorsEqualInputRockTest() {

        //Given
        String player1 = 'rock';
        String player2 = 'rock';

        //When
        Test.startTest();
        RockPaperScissorsHelper helper = new RockPaperScissorsHelper();
        Integer result = helper.rockPaperScissors(player1, player2);
        Test.stopTest();

        //Then
        System.Assert.areEqual(0, result);
    }

    @IsTest
    static void rockPaperScissorsEqualInputTest() {

        //Given
        String player1 = 'rock';
        String player2 = 'rock';

        //When
        Test.startTest();
        RockPaperScissorsHelper helper = new RockPaperScissorsHelper();

        Integer resultRock      = helper.rockPaperScissors(player1, player2);

        player1 = 'paper';
        player2 = 'paper';
        Integer resultPaper     = helper.rockPaperScissors(player1, player2);

        player1 = 'scissors';
        player2 = 'scissors';
        Integer resultScissors  = helper.rockPaperScissors(player1, player2);
        Test.stopTest();

        //Then
        System.Assert.areEqual(0, resultRock);
        System.Assert.areEqual(0, resultPaper);
        System.Assert.areEqual(0, resultScissors);
    }


    @IsTest
    static void rockPaperScissorsPlayerOneWinnerTest() {

        //Given
        String player1 = 'rock';
        String player2 = 'scissors';

        //When
        Test.startTest();
        RockPaperScissorsHelper helper = new RockPaperScissorsHelper();

        Integer resultPlay1      = helper.rockPaperScissors(player1, player2);

        player1 = 'paper';
        player2 = 'rock';
        Integer resultPlay2     = helper.rockPaperScissors(player1, player2);

        player1 = 'scissors';
        player2 = 'paper';
        Integer resultPlay3     = helper.rockPaperScissors(player1, player2);
        Test.stopTest();

        //Then
        System.Assert.areEqual(1, resultPlay1);
        System.Assert.areEqual(1, resultPlay2);
        System.Assert.areEqual(1, resultPlay2);
    }


    @IsTest
    static void rockPaperScissorsPlayerTwoWinnerTest() {

        //Given
        String player1 = 'rock';
        String player2 = 'paper';

        //When
        Test.startTest();
        RockPaperScissorsHelper helper = new RockPaperScissorsHelper();

        Integer resultPlay1      = helper.rockPaperScissors(player1, player2);

        player1 = 'paper';
        player2 = 'scissors';
        Integer resultPlay2     = helper.rockPaperScissors(player1, player2);

        player1 = 'scissors';
        player2 = 'rock';
        Integer resultPlay3     = helper.rockPaperScissors(player1, player2);
        Test.stopTest();

        //Then
        System.Assert.areEqual(2, resultPlay1);
        System.Assert.areEqual(2, resultPlay2);
        System.Assert.areEqual(2, resultPlay2);
    }

}