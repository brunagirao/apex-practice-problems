/************************************************************************************************
* Name      : SumEqualsHelperTest
* Purpose   : Test Class of SumEqualsHelper
* Author    : Bruna Girão
* Date      : 10-07-2023
***************************************************************************************************/
@IsTest
public with sharing class SumEqualsHelperTest {
    
    @IsTest
    static void sumEquals_ZeroInputTest() {
        
        //Given
        Integer a = 0;
        Integer b = 0;
        Integer c = 0;

        //When
        Test.startTest();
        SumEqualsHelper helper = new SumEqualsHelper();
        Boolean isSumEqual  = helper.sumEquals(a, b, c);
        Test.stopTest();

        //Then
        System.Assert.areEqual(true, isSumEqual,  '0 + 0 == 0');
        System.Assert.areNotEqual(1, a + b);
    }

    @IsTest
    static void sumEquals_ValidInputTest() {
        
        //Given
        Integer a = 1;
        Integer b = 2;
        Integer c = 3;

        //When
        Test.startTest();
        SumEqualsHelper helper = new SumEqualsHelper();
        Boolean isSumEqual  = helper.sumEquals(a, b, c);
        Test.stopTest();

        //Then
        System.Assert.areEqual(true, isSumEqual,  '1 + 2 == 3');
        System.Assert.areNotEqual(4, a + b);
    }

    @IsTest
    static void sumEquals_InvalidInputTest() {
        
        //Given
        Integer a = 11;
        Integer b = 12;
        Integer c = 13;

        //When
        Test.startTest();
        SumEqualsHelper helper = new SumEqualsHelper();
        Boolean isSumEqual  = helper.sumEquals(a, b, c);
        Test.stopTest();

        //Then
        System.Assert.areEqual(false, isSumEqual,  '11 + 12 != 13');
        System.Assert.areNotEqual(13, a + b);
    }


    @IsTest
    static void sumEquals_NegativeInputTest() {
        
        //Given
        Integer a = -12;
        Integer b = -12;
        Integer c = 0;

        //When
        Test.startTest();
        SumEqualsHelper helper = new SumEqualsHelper();
        Boolean isSumEqual  = helper.sumEquals(a, b, c);
        Test.stopTest();

        //Then
        System.Assert.areEqual(false, isSumEqual,  '-12 + -12 != 0');
        System.Assert.areNotEqual(0, a + b);
    }

}