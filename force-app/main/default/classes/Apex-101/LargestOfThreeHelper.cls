/************************************************************************************************
* Name      : LargestOfThreeHelper
* Purpose   : #3 - Largest of Three: Given three Integers, return the largest
* TestClass : LargestOfThreeHelperTest
* Author    : Bruna Girão
* Date      : 14-07-2023
***************************************************************************************************/
public with sharing class LargestOfThreeHelper {

    public static Integer findLargestFirstApproach(Integer num1, Integer num2, Integer num3) {

        if(num3 > num2 && num3 > num1) {
            return num3;
        } else if (num2 > num3 && num2 > num1){
            return num2;
        } else {
           return num1;
        } 
    
    }

    public static Integer findLargestSecondApproach(Integer num1, Integer num2, Integer num3) { 
    
        return num3 > (num2 > num1 ? num2 : num1) ? num3 : ((num2 > num1) ? num2 : num1);
    
    }
}