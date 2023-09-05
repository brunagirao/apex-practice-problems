/************************************************************************************************
* Name      : IsPassedHelper
* Purpose   : Chalenge 19 - Passing Students
              A student passes a course if any two of the following three conditions are true: 
              they have passed the exam, they have passed assignments, and they have passed the course project.
              Implement the function isPassed that takes in three parameters passedExam, passedAssignments, 
              and passedProject, and returns true of at least two of the passed variables are true.
              isPassed(true, false, true) = true. Student did not pass assignments, but passes overall 
              because they passed the exam and the project.
              isPassed(false, false, true) = false. Student only passed the project, and therefore does not pass overall.
* TestClass : IsPassedHelperTest
* Author    : Bruna Girão
* Date      : 05-09-2023
***************************************************************************************************/
public with sharing class IsPassedHelper {
    
    public Boolean isPassed(Boolean passedExam, Boolean passedAssignments, Boolean passedProject) {
        //code here
    
        if(passedExam && (passedAssignments || passedProject)) {
            return true;
        }
    
        if(passedAssignments && (passedExam || passedProject)) {
            return true;
        }
    
        if(passedProject && (passedExam || passedAssignments)) {
            return true;
        }
    
        return false;
    
    }
}