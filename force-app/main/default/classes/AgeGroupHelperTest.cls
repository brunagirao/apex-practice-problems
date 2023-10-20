/************************************************************************************************
* Name      : AgeGroupHelperTest
* Purpose   : Test Class of AgeGroupHelper
* Author    : Bruna Girão
* Date      : 20-10-2023
**************************************************************************************************/
@IsTest
public with sharing class AgeGroupHelperTest {
    
    @IsTest
    static void ageGroupNullAgeTest() {
        //Given
        Integer n;

        //When
        AgeGroupHelper helper = new AgeGroupHelper();
        String result = helper.ageGroup(n);

        //Then
        System.Assert.areEqual('Invalid age', result);
    }

    @IsTest
    static void ageGroupNegativeAgeTest() {
        //Given
        Integer n = -12;

        //When
        AgeGroupHelper helper = new AgeGroupHelper();
        String result = helper.ageGroup(n);

        //Then
        System.Assert.areEqual('Invalid age', result);
    }

    @IsTest
    static void ageGroupInfantAgeTest() {
        //Given
        Integer n = 0;

        //When
        AgeGroupHelper helper = new AgeGroupHelper();
        String result = helper.ageGroup(n);

        //Then
        System.Assert.areEqual('Infant', result);
    }

    @IsTest
    static void ageGroupChildAgeTest() {
        //Given
        Integer n = 13;

        //When
        AgeGroupHelper helper = new AgeGroupHelper();
        String result = helper.ageGroup(n);

        //Then
        System.Assert.areEqual('Child', result);
    }

    @IsTest
    static void ageGroupYouthAgeTest() {
        //Given
        Integer n = 19;

        //When
        AgeGroupHelper helper = new AgeGroupHelper();
        String result = helper.ageGroup(n);

        //Then
        System.Assert.areEqual('Youth', result);
    }

    @IsTest
    static void ageGroupAdultAgeTest() {
        //Given
        Integer n = 25;

        //When
        AgeGroupHelper helper = new AgeGroupHelper();
        String result = helper.ageGroup(n);

        //Then
        System.Assert.areEqual('Adult', result);
    }
}