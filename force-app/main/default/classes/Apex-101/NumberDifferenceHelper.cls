/************************************************************************************************
* Name      : NumberDifferenceHelper
* Purpose   : Challenge #4 - Number Difference: Implement a function diff that calculates the 
              absolute difference between two integers.
* TestClass : NumberDifferenceHelperTest
* Author    : Bruna Girão
* Date      : 10-07-2023
***************************************************************************************************/
public with sharing class NumberDifferenceHelper {
    
    public Integer diffFirstApproach(Integer a, Integer b) {
        Integer max = a > b ? a : b;
        Integer min = a < b ? a : b;

        return max - min;
    }

    public Integer diffSecondApproach(Integer a, Integer b) {
        return Math.abs(a - b);
    }
}