/************************************************************************************************
* Name      : WhichTwoHelperTest
* Purpose   : Test Class of WhichTwoHelper
* Author    : Bruna Girão
* Date      : 16-10-2023
**************************************************************************************************/
@IsTest
public with sharing class WhichTwoHelperTest {
    
    @IsTest
    static void whichTwoNullValuesTest() {
        
        //Given
        Integer a;
        Integer b;
        Integer c;

        //When
        Test.startTest();
        WhichTwoHelper helper = new WhichTwoHelper();
        String result = helper.whichTwo(a, b, c);
        Test.stopTest();

        //Then
        System.Assert.areEqual('', result);
        System.Assert.areNotEqual('a', result);
    }

    @IsTest
    static void whichTwoReturnATest() {
        
        //Given
        Integer a = 22;
        Integer b = 18;
        Integer c = 4;

        //When
        Test.startTest();
        WhichTwoHelper helper = new WhichTwoHelper();
        String result = helper.whichTwo(a, b, c);
        Test.stopTest();

        //Then
        System.Assert.areEqual('a', result);
        System.Assert.areNotEqual('c', result);
    }

    @IsTest
    static void whichTwoReturnBTest() {
        
        //Given
        Integer a = 5;
        Integer b = 50;
        Integer c = 45;

        //When
        Test.startTest();
        WhichTwoHelper helper = new WhichTwoHelper();
        String result = helper.whichTwo(a, b, c);
        Test.stopTest();

        //Then
        System.Assert.areEqual('b', result);
        System.Assert.areNotEqual('a', result);
    }

    @IsTest
    static void whichTwoReturnCTest() {
        
        //Given
        Integer a = 2;
        Integer b = 9;
        Integer c = 11;

        //When
        Test.startTest();
        WhichTwoHelper helper = new WhichTwoHelper();
        String result = helper.whichTwo(a, b, c);
        Test.stopTest();

        //Then
        System.Assert.areEqual('c', result);
        System.Assert.areNotEqual('b', result);
    }

    @IsTest
    static void whichTwoNegativeValuesTest() {
        
        //Given
        Integer a = -12;
        Integer b = -16;
        Integer c = -4;

        //When
        Test.startTest();
        WhichTwoHelper helper = new WhichTwoHelper();
        String result = helper.whichTwo(a, b, c);
        Test.stopTest();

        //Then
        System.Assert.areEqual('b', result);
        System.Assert.areNotEqual('a', result);
    }

    @IsTest
    static void whichTwoNoneReturnTest() {
        
        //Given
        Integer a = 2;
        Integer b = 5;
        Integer c = 6;

        //When
        Test.startTest();
        WhichTwoHelper helper = new WhichTwoHelper();
        String result = helper.whichTwo(a, b, c);
        Test.stopTest();

        //Then
        System.Assert.areEqual('', result);
        System.Assert.areNotEqual('a', result);
    }
}