/************************************************************************************************
* Name      : TeenagerHelperTest
* Purpose   : Test Class of TeenagerHelper
* Author    : Bruna Girão
* Date      : 05-07-2023
***************************************************************************************************/
@IsTest
public with sharing class TeenagerHelperTest {
    
    @IsTest
    static void isTeenager_ZeroAge_ErrorTest() {

        //Given
        Integer age = 0;

        //When
        Test.startTest();
        TeenagerHelper helper = new TeenagerHelper();
        Boolean isTeenager = helper.isTeenager(age);
        Test.stopTest();

        //Then
        System.Assert.areEqual(false, isTeenager, '0 years old is not a teenager');
        System.Assert.areNotEqual(13, age);

    }

    @IsTest
    static void isTeenager_TwelveAge_ErrorTest() {
        
        //Given
        Integer age = 12;

        //When
        Test.startTest();
        TeenagerHelper helper = new TeenagerHelper();
        Boolean isTeenager = helper.isTeenager(age);
        Test.stopTest();

        //Then
        System.Assert.areEqual(false, isTeenager, '12 years old is not a teenager');
        System.Assert.areNotEqual(13, age);
    }

    @IsTest
    static void isTeenager_ThirteenAge_SuccessTest() {
        
        //Given
        Integer age = 13;

        //When
        Test.startTest();
        TeenagerHelper helper = new TeenagerHelper();
        Boolean isTeenager = helper.isTeenager(age);
        Test.stopTest();

        //Then
        System.Assert.areEqual(true, isTeenager, '13 years old is a teenager');
        System.Assert.areNotEqual(12, age);
    }

    
    @IsTest
    static void isTeenager_FourteenAge_SuccessTest() {
        
        //Given
        Integer age = 14;

        //When
        Test.startTest();
        TeenagerHelper helper = new TeenagerHelper();
        Boolean isTeenager = helper.isTeenager(age);
        Test.stopTest();

        //Then
        System.Assert.areEqual(true, isTeenager, '14 years old is a teenager');
        System.Assert.areNotEqual(12, age);
    }

    @IsTest
    static void isTeenager_NineteenAge_SuccessTest() {
        
        //Given
        Integer age = 19;

        //When
        Test.startTest();
        TeenagerHelper helper = new TeenagerHelper();
        Boolean isTeenager = helper.isTeenager(age);
        Test.stopTest();

        //Then
        System.Assert.areEqual(true, isTeenager, '19 years old is a teenager');
        System.Assert.areNotEqual(12, age);
    }

    @IsTest
    static void isTeenager_TwentyAge_ErrorTest() {
        
        //Given
        Integer age = 20;

        //When
        Test.startTest();
        TeenagerHelper helper = new TeenagerHelper();
        Boolean isTeenager = helper.isTeenager(age);
        Test.stopTest();

        //Then
        System.Assert.areEqual(false, isTeenager, '20 years old is not a teenager');
        System.Assert.areNotEqual(12, age);
    }

    @IsTest
    static void isTeenager_ThirtyAge_ErrorTest() {
        
        //Given
        Integer age = 30;

        //When
        Test.startTest();
        TeenagerHelper helper = new TeenagerHelper();
        Boolean isTeenager = helper.isTeenager(age);
        Test.stopTest();

        //Then
        System.Assert.areEqual(false, isTeenager, '30 years old is not a teenager');
        System.Assert.areNotEqual(12, age);
    }
}