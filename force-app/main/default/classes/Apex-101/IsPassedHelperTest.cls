/************************************************************************************************
* Name      : IsPassedHelperTest
* Purpose   : Test Class of IsPassedHelper
* Author    : Bruna Girão
* Date      : 05-09-2023
**************************************************************************************************/
@isTest
public with sharing class IsPassedHelperTest {
    
    
    @IsTest
    static void IsPassedHelper_PassedAnything() {
        
        //Given
        Boolean passedExam = false;
        Boolean passedAssignments = false;
        Boolean passedProject = false;

        //When
        Test.startTest();
        IsPassedHelper helper = new IsPassedHelper();
        Boolean result = helper.isPassed(passedExam, passedAssignments, passedProject);
        Test.stopTest();

        //Then
        System.Assert.areEqual(false, result, 'Student does not pass any of the 3 criteria');
        System.Assert.areNotEqual(true, result);
    }

    @IsTest
    static void IsPassedHelper_PassedAll() {
        
        //Given
        Boolean passedExam = true;
        Boolean passedAssignments = true;
        Boolean passedProject = true;

        //When
        Test.startTest();
        IsPassedHelper helper = new IsPassedHelper();
        Boolean result = helper.isPassed(passedExam, passedAssignments, passedProject);
        Test.stopTest();

        //Then
        System.Assert.areEqual(true, result, 'Student passes all 3 criteria');
        System.Assert.areNotEqual(false, result);
    }

    @IsTest
    static void IsPassedHelper_PassedExam() {
        
        //Given
        Boolean passedExam = true;
        Boolean passedAssignments = false;
        Boolean passedProject = false;

        //When
        Test.startTest();
        IsPassedHelper helper = new IsPassedHelper();
        Boolean result = helper.isPassed(passedExam, passedAssignments, passedProject);
        Test.stopTest();

        //Then
        System.Assert.areEqual(false, result, 'Student passes only 1 of the 3 criteria');
        System.Assert.areNotEqual(true, result);
    }

    @IsTest
    static void IsPassedHelper_PassedAssignments() {
        
        //Given
        Boolean passedExam = false;
        Boolean passedAssignments = true;
        Boolean passedProject = false;

        //When
        Test.startTest();
        IsPassedHelper helper = new IsPassedHelper();
        Boolean result = helper.isPassed(passedExam, passedAssignments, passedProject);
        Test.stopTest();

        //Then
        System.Assert.areEqual(false, result, 'Student passes only 1 of the 3 criteria');
        System.Assert.areNotEqual(true, result);
    }

    @IsTest
    static void IsPassedHelper_PassedProject() {
        
        //Given
        Boolean passedExam = false;
        Boolean passedAssignments = false;
        Boolean passedProject = true;

        //When
        Test.startTest();
        IsPassedHelper helper = new IsPassedHelper();
        Boolean result = helper.isPassed(passedExam, passedAssignments, passedProject);
        Test.stopTest();

        //Then
        System.Assert.areEqual(false, result, 'Student passes only 1 of the 3 criteria');
        System.Assert.areNotEqual(true, result);
    }

    @IsTest
    static void IsPassedHelper_PassedExamAndAssignments() {
        
        //Given
        Boolean passedExam = true;
        Boolean passedAssignments = true;
        Boolean passedProject = false;

        //When
        Test.startTest();
        IsPassedHelper helper = new IsPassedHelper();
        Boolean result = helper.isPassed(passedExam, passedAssignments, passedProject);
        Test.stopTest();

        //Then
        System.Assert.areEqual(true, result, 'Student passes 2 of the 3 criteria');
        System.Assert.areNotEqual(false, result);
    }

    @IsTest
    static void IsPassedHelper_PassedExamAndProject() {
        
        //Given
        Boolean passedExam = true;
        Boolean passedAssignments = false;
        Boolean passedProject = true;

        //When
        Test.startTest();
        IsPassedHelper helper = new IsPassedHelper();
        Boolean result = helper.isPassed(passedExam, passedAssignments, passedProject);
        Test.stopTest();

        //Then
        System.Assert.areEqual(true, result, 'Student passes 2 of the 3 criteria');
        System.Assert.areNotEqual(false, result);
    }

    @IsTest
    static void IsPassedHelper_PassedAssignmentsAndProject() {
        
        //Given
        Boolean passedExam = false;
        Boolean passedAssignments = true;
        Boolean passedProject = true;

        //When
        Test.startTest();
        IsPassedHelper helper = new IsPassedHelper();
        Boolean result = helper.isPassed(passedExam, passedAssignments, passedProject);
        Test.stopTest();

        //Then
        System.Assert.areEqual(true, result, 'Student passes 2 of the 3 criteria');
        System.Assert.areNotEqual(false, result);
    }


}