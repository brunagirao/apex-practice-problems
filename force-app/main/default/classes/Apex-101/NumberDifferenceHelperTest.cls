/************************************************************************************************
* Name      : NumberDifferenceHelperTest
* Purpose   : Test Class of NumberDifferenceHelper
* Author    : Bruna Girão
* Date      : 10-07-2023
***************************************************************************************************/
@IsTest
public with sharing class NumberDifferenceHelperTest {
   
    @IsTest
    static void diffBothApproaches_ZeroInputTest() {
        
        //Given
        Integer a = 0;
        Integer b = 0;

        //When
        Test.startTest();
        NumberDifferenceHelper helper = new NumberDifferenceHelper();
        Integer resultFirstApproach   = helper.diffFirstApproach(a, b);
        Integer resultSecondApproach  = helper.diffSecondApproach(a, b);
        Test.stopTest();

        //Then
        System.Assert.areEqual(0, resultFirstApproach,  'Diff of 0 and 0 should be 0');
        System.Assert.areEqual(0, resultSecondApproach, 'Diff of 0 and 0 should be 0');
        System.Assert.areNotEqual(1, resultFirstApproach);
        System.Assert.areNotEqual(1, resultSecondApproach);
 
    }

    @IsTest
    static void diffBothApproaches_DefaultInputTest() {
        
        //Given
        Integer a = 100;
        Integer b = 50;

        //When
        Test.startTest();
        NumberDifferenceHelper helper = new NumberDifferenceHelper();
        Integer resultFirstApproach   = helper.diffFirstApproach(a, b);
        Integer resultSecondApproach  = helper.diffSecondApproach(a, b);
        Test.stopTest();

        //Then
        System.Assert.areEqual(50, resultFirstApproach,  'Diff of 100 and 50 should be 50');
        System.Assert.areEqual(50, resultSecondApproach, 'Diff of 100 and 50 should be 50');
        System.Assert.areNotEqual(51, resultFirstApproach);
        System.Assert.areNotEqual(51, resultSecondApproach);
 
    }

    @IsTest
    static void diffBothApproaches_DefaultInverseInputTest() {
        
        //Given
        Integer a = 50;
        Integer b = 100;

        //When
        Test.startTest();
        NumberDifferenceHelper helper = new NumberDifferenceHelper();
        Integer resultFirstApproach   = helper.diffFirstApproach(a, b);
        Integer resultSecondApproach  = helper.diffSecondApproach(a, b);
        Test.stopTest();

        //Then
        System.Assert.areEqual(50, resultFirstApproach,  'Diff of 50 and 100 should be 50');
        System.Assert.areEqual(50, resultSecondApproach, 'Diff of 50 and 100 should be 50');
        System.Assert.areNotEqual(-50, resultFirstApproach);
        System.Assert.areNotEqual(-50, resultSecondApproach);
 
    }

    @IsTest
    static void diffBothApproaches_NegativeInputTest() {
        
        //Given
        Integer a = -50;
        Integer b = -10;

        //When
        Test.startTest();
        NumberDifferenceHelper helper = new NumberDifferenceHelper();
        Integer resultFirstApproach   = helper.diffFirstApproach(a, b);
        Integer resultSecondApproach  = helper.diffSecondApproach(a, b);
        Test.stopTest();

        //Then
        System.Assert.areEqual(40, resultFirstApproach,  'Diff of -50 and -10 should be 40');
        System.Assert.areEqual(40, resultSecondApproach, 'Diff of -50 and -10 should be 40');
        System.Assert.areNotEqual(-60, resultFirstApproach);
        System.Assert.areNotEqual(-60, resultSecondApproach);
 
    }

    @IsTest
    static void diffBothApproaches_NegativeInverseInputTest() {
        
        //Given
        Integer a = -10;
        Integer b = -50;

        //When
        Test.startTest();
        NumberDifferenceHelper helper = new NumberDifferenceHelper();
        Integer resultFirstApproach   = helper.diffFirstApproach(a, b);
        Integer resultSecondApproach  = helper.diffSecondApproach(a, b);
        Test.stopTest();

        //Then
        System.Assert.areEqual(40, resultFirstApproach,  'Diff of -10 and -50 should be 50');
        System.Assert.areEqual(40, resultSecondApproach, 'Diff of -10 and -50 should be 50');
        System.Assert.areNotEqual(-60, resultFirstApproach);
        System.Assert.areNotEqual(-60, resultSecondApproach);
 
    }

    
}