/************************************************************************************************
* Name      : TeenagerHelperTest
* Purpose   : Test Class of TeenagerHelper
* Author    : Bruna Girão
* Date      : 05-07-2023
**************************************************************************************************/
@IsTest
public with sharing class AorAnHelperTest {
    
    @IsTest
    static void aOrAnFirstApproach_NullWord() {
        
        //Given
        String word;

        //When
        Test.startTest();
        AorAnHelper helper = new AorAnHelper();
        String resultFirstApproach = helper.aOrAnFirstApproach(word);
        String resultSecondApproach = helper.aOrAnFirstApproach(word);
        Test.stopTest();

        //Then
        System.Assert.areEqual('', resultFirstApproach);
        System.Assert.areEqual('', resultSecondApproach);
    }


    @IsTest
    static void aOrAnFirstApproach_StartWithVowelAWord() {
        
        //Given
        String word = 'apple';

        //When
        Test.startTest();
        AorAnHelper helper = new AorAnHelper();
        String resultFirstApproach = helper.aOrAnFirstApproach(word);
        String resultSecondApproach = helper.aOrAnFirstApproach(word);
        Test.stopTest();

        //Then
        System.Assert.areEqual('an apple', resultFirstApproach);
        System.Assert.areEqual('an apple', resultSecondApproach);
    }

    
    @IsTest
    static void aOrAnFirstApproach_StartWithVowelEWord() {
        
        //Given
        String word = 'elephant';

        //When
        Test.startTest();
        AorAnHelper helper = new AorAnHelper();
        String resultFirstApproach = helper.aOrAnFirstApproach(word);
        String resultSecondApproach = helper.aOrAnFirstApproach(word);
        Test.stopTest();

        //Then
        System.Assert.areEqual('an elephant', resultFirstApproach);
        System.Assert.areEqual('an elephant', resultSecondApproach);
    }

    @IsTest
    static void aOrAnFirstApproach_StartWithVowelIWord() {
        
        //Given
        String word = 'igloo';

        //When
        Test.startTest();
        AorAnHelper helper = new AorAnHelper();
        String resultFirstApproach = helper.aOrAnFirstApproach(word);
        String resultSecondApproach = helper.aOrAnFirstApproach(word);
        Test.stopTest();

        //Then
        System.Assert.areEqual('an igloo', resultFirstApproach);
        System.Assert.areEqual('an igloo', resultSecondApproach);
    }

    @IsTest
    static void aOrAnFirstApproach_StartWithVowelOWord() {
        
        //Given
        String word = 'olive';

        //When
        Test.startTest();
        AorAnHelper helper = new AorAnHelper();
        String resultFirstApproach = helper.aOrAnFirstApproach(word);
        String resultSecondApproach = helper.aOrAnFirstApproach(word);
        Test.stopTest();

        //Then
        System.Assert.areEqual('an olive', resultFirstApproach);
        System.Assert.areEqual('an olive', resultSecondApproach);
    }

    @IsTest
    static void aOrAnFirstApproach_StartWithVowelUWord() {
        
        //Given
        String word = 'umbrella';

        //When
        Test.startTest();
        AorAnHelper helper = new AorAnHelper();
        String resultFirstApproach = helper.aOrAnFirstApproach(word);
        String resultSecondApproach = helper.aOrAnFirstApproach(word);
        Test.stopTest();

        //Then
        System.Assert.areEqual('an umbrella', resultFirstApproach);
        System.Assert.areEqual('an umbrella', resultSecondApproach);
    }

    
    @IsTest
    static void aOrAnFirstApproach_NotStartWithVowelWord() {
        
        //Given
        String word = 'clock';

        //When
        Test.startTest();
        AorAnHelper helper = new AorAnHelper();
        String resultFirstApproach = helper.aOrAnFirstApproach(word);
        String resultSecondApproach = helper.aOrAnFirstApproach(word);
        Test.stopTest();

        //Then
        System.Assert.areEqual('a clock', resultFirstApproach);
        System.Assert.areEqual('a clock', resultSecondApproach);
    }

}