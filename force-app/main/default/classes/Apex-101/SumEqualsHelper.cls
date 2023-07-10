/************************************************************************************************
* Name      : SumEqualsHelper
* Purpose   : Challenge #14 - Sum Equals: Given Integers a, b, and c, return true if a and b add up to c.
* TestClass : SumEqualsHelperTest
* Author    : Bruna Girão
* Date      : 10-07-2023
***************************************************************************************************/
public with sharing class SumEqualsHelper {
    
    public Boolean sumEquals(Integer a, Integer b, Integer c) {
        return a + b == c;
    }
}