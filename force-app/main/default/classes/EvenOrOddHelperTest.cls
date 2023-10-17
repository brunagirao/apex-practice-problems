/************************************************************************************************
* Name      : EvenOrOddHelperTest
* Purpose   : Test Class of EvenOrOddHelper
* Author    : Bruna Girão
* Date      : 17-10-2023
**************************************************************************************************/
@IsTest
public with sharing class EvenOrOddHelperTest {

    @IsTest
    static void evenOrOddHelperNullInputTest() {

        //Given
        Integer num;

        //When
        Test.startTest();
        EvenOrOddHelper helper = new EvenOrOddHelper();
        String result = helper.evenOrOdd(num);
        Test.stopTest();

        //Then
        System.Assert.areEqual('even', result);
    }

    @IsTest
    static void evenOrOddHelperZeroInputTest() {

        //Given
        Integer num = 0;

        //When
        Test.startTest();
        EvenOrOddHelper helper = new EvenOrOddHelper();
        String result = helper.evenOrOdd(num);
        Test.stopTest();

        //Then
        System.Assert.areEqual('even', result);
    }

    
    @IsTest
    static void evenOrOddHelperPositiveInputTest() {

        //Given
        Integer num = 255;

        //When
        Test.startTest();
        EvenOrOddHelper helper = new EvenOrOddHelper();
        String result = helper.evenOrOdd(num);
        Test.stopTest();

        //Then
        System.Assert.areEqual('odd', result);
    }

    @IsTest
    static void evenOrOddHelperNegativeInputTest() {

        //Given
        Integer num = -1220;

        //When
        Test.startTest();
        EvenOrOddHelper helper = new EvenOrOddHelper();
        String result = helper.evenOrOdd(num);
        Test.stopTest();

        //Then
        System.Assert.areEqual('even', result);
    }
}