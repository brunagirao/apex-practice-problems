/************************************************************************************************
* Name      : WhichTwoHelper
* Purpose   : Challenge 15 - Which Two: Given Integers a, b, and c, determine if any two of them 
              add up to the third and return 'a', 'b', 'c' depending on which the sum is. 
              If no two numbers add up to a third number, return an empty string. Assume that 
              multiple solutions do not exist.
* TestClass : WhichTwoHelper
* Author    : Bruna Girão
* Date      : 16-10-2023
***************************************************************************************************/
public with sharing class WhichTwoHelper {

    public String whichTwo(Integer a, Integer b, Integer c) {
        //code here
        if(a == null || b == null || c == null) return '';
    
        if (a + b == c) {
            return 'c';
        } else if (a + c == b) {
            return 'b';
        } else if (c + b == a) {
            return 'a';
        } else {
            return '';
        }
    }
}