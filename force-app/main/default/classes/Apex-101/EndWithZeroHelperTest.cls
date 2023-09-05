/************************************************************************************************
* Name      : EndWithZeroHelperTest
* Purpose   : Test Class of EndWithZeroHelper
* Author    : Bruna Girão
* Date      : 05-09-2023
**************************************************************************************************/
@isTest
public with sharing class EndWithZeroHelperTest {
    
    @IsTest
    static void IsEndWithZero_NumberZero() {
        
        //Given
        Integer num = 0;

        //When
        Test.startTest();
        EndWithZeroHelper helper = new EndWithZeroHelper();
        Boolean result = helper.isEndWithZero(num);
        Test.stopTest();

        //Then
        System.Assert.areEqual(true, result, 'Number ends with 0');
        System.Assert.areNotEqual(false, result);
    }

    @IsTest
    static void IsEndWithZero_NumberEleven() {
        
        //Given
        Integer num = 11;

        //When
        Test.startTest();
        EndWithZeroHelper helper = new EndWithZeroHelper();
        Boolean result = helper.isEndWithZero(num);
        Test.stopTest();

        //Then
        System.Assert.areEqual(false, result, 'Number does not ends with 0');
        System.Assert.areNotEqual(true, result);
    }

    @IsTest
    static void IsEndWithZero_NumberTwenty() {
        
        //Given
        Integer num = 20;

        //When
        Test.startTest();
        EndWithZeroHelper helper = new EndWithZeroHelper();
        Boolean result = helper.isEndWithZero(num);
        Test.stopTest();

        //Then
        System.Assert.areEqual(true, result, 'Number ends with 0');
        System.Assert.areNotEqual(false, result);
    }


    @IsTest
    static void IsEndWithZero_BigNumber() {
        
        //Given
        Integer num = 25698;

        //When
        Test.startTest();
        EndWithZeroHelper helper = new EndWithZeroHelper();
        Boolean result = helper.isEndWithZero(num);
        Test.stopTest();

        //Then
        System.Assert.areEqual(false, result, 'Number does not ends with 0');
        System.Assert.areNotEqual(true, result);
    }

    @IsTest
    static void IsEndWithZero_NegativeNumber() {
        
        //Given
        Integer num = -258;

        //When
        Test.startTest();
        EndWithZeroHelper helper = new EndWithZeroHelper();
        Boolean result = helper.isEndWithZero(num);
        Test.stopTest();

        //Then
        System.Assert.areEqual(false, result, 'Number does not ends with 0');
        System.Assert.areNotEqual(true, result);
    }
}