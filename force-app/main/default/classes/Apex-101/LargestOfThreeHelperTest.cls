/************************************************************************************************
* Name      : LargestOfThreeHelperTest
* Purpose   : Test Class of LargestOfThreeHelper
* Author    : Bruna Girão
* Date      : 14-07-2023
**************************************************************************************************/
@IsTest
public with sharing class LargestOfThreeHelperTest {
    
    @IsTest
    static void findLargest_AscendingNumbers() {
        
        //Given
        Integer num1 = 5;
        Integer num2 = 7;
        Integer num3 = 15;

        //When
        Test.startTest();
        Integer resultFirstApproach  = LargestOfThreeHelper.findLargestFirstApproach(num1, num2, num3);
        Integer resultSecondApproach = LargestOfThreeHelper.findLargestSecondApproach(num1, num2, num3);
        Test.stopTest();


        //Then
        System.Assert.areEqual(15, resultFirstApproach);
        System.Assert.areEqual(15, resultSecondApproach);
        System.Assert.areNotEqual(7, resultFirstApproach);
        System.Assert.areNotEqual(7, resultFirstApproach);
        
    }

    @IsTest
    static void findLargest_DescendingNumbers() {
        
        //Given
        Integer num1 = 25;
        Integer num2 = 10;
        Integer num3 = 8;

        //When
        Test.startTest();
        Integer resultFirstApproach  = LargestOfThreeHelper.findLargestFirstApproach(num1, num2, num3);
        Integer resultSecondApproach = LargestOfThreeHelper.findLargestSecondApproach(num1, num2, num3);
        Test.stopTest();


        //Then
        System.Assert.areEqual(25, resultFirstApproach);
        System.Assert.areEqual(25, resultSecondApproach);
        System.Assert.areNotEqual(10, resultFirstApproach);
        System.Assert.areNotEqual(10, resultFirstApproach);
        
    }

    @IsTest
    static void findLargest_NegativeNumbers() {
        
        //Given
        Integer num1 = -16;
        Integer num2 = -5;
        Integer num3 = -10;

        //When
        Test.startTest();
        Integer resultFirstApproach  = LargestOfThreeHelper.findLargestFirstApproach(num1, num2, num3);
        Integer resultSecondApproach = LargestOfThreeHelper.findLargestSecondApproach(num1, num2, num3);
        Test.stopTest();


        //Then
        System.Assert.areEqual(-5, resultFirstApproach);
        System.Assert.areEqual(-5, resultSecondApproach);
        System.Assert.areNotEqual(-16, resultFirstApproach);
        System.Assert.areNotEqual(-16, resultFirstApproach);
        
    }

    @IsTest
    static void findLargest_ZeroNumbers() {
        
        //Given
        Integer num1 = 0;
        Integer num2 = 0;
        Integer num3 = 0;

        //When
        Test.startTest();
        Integer resultFirstApproach  = LargestOfThreeHelper.findLargestFirstApproach(num1, num2, num3);
        Integer resultSecondApproach = LargestOfThreeHelper.findLargestSecondApproach(num1, num2, num3);
        Test.stopTest();


        //Then
        System.Assert.areEqual(0, resultFirstApproach);
        System.Assert.areEqual(0, resultSecondApproach);
        System.Assert.areNotEqual(1, resultFirstApproach);
        System.Assert.areNotEqual(1, resultFirstApproach);
        
    }
}