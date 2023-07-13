/************************************************************************************************
* Name      : AscendingOrderHelperTest
* Purpose   : Test Class of AscendingOrderHelper
* Author    : Bruna Girão
* Date      : 10-07-2023
***************************************************************************************************/
@IsTest
public with sharing class AscendingOrderHelperTest {
    
    @IsTest
    static void isInAscendingOrder_AscendingNumbersInput() {
        
        //Given
        Integer a = 1;
        Integer b = 2;
        Integer c = 3;

        //When
        Test.startTest();
        AscendingOrderHelper helper = new AscendingOrderHelper();
        Boolean isInAscendingOrder = helper.isInAscendingOrder(a, b, c);
        Test.stopTest();

        //Then
        System.Assert.areEqual(true, isInAscendingOrder, '1, 2, and 3 are in ascending order');
    }


    @IsTest
    static void isInAscendingOrder_DescendingNumbersInput() {
        
        //Given
        Integer a = 10;
        Integer b = 5;
        Integer c = 4;

        //When
        Test.startTest();
        AscendingOrderHelper helper = new AscendingOrderHelper();
        Boolean isInAscendingOrder = helper.isInAscendingOrder(a, b, c);
        Test.stopTest();

        //Then
        System.Assert.areEqual(false, isInAscendingOrder, '10, 5, and 4 aren\'t in ascending order');
    }

    @IsTest
    static void isInAscendingOrder_EqualsNumbersInput() {
        
        //Given
        Integer a = 10;
        Integer b = 10;
        Integer c = 10;

        //When
        Test.startTest();
        AscendingOrderHelper helper = new AscendingOrderHelper();
        Boolean isInAscendingOrder = helper.isInAscendingOrder(a, b, c);
        Test.stopTest();

        //Then
        System.Assert.areEqual(true, isInAscendingOrder, '10, 10, and 10 are in ascending order');
    }


    @IsTest
    static void isInAscendingOrder_NullNumbersInput() {
        
        //Given
        Integer a;
        Integer b;
        Integer c;

        //When
        Test.startTest();
        AscendingOrderHelper helper = new AscendingOrderHelper();
        Boolean isInAscendingOrder = helper.isInAscendingOrder(a, b, c);
        Test.stopTest();

        //Then
        System.Assert.areEqual(false, isInAscendingOrder, 'null, null, and null aren\'t in ascending order');
    }
}