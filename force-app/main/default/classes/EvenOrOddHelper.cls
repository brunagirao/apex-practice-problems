/************************************************************************************************
* Name      : EvenOrOddHelper
* Purpose   : Challenge 5 - Even or Odd: Given an Integer, return 'even' if the Integer is even, 
               or 'odd' if the Integer is odd. Remember to use the Math.mod function.
* TestClass : EvenOrOddHelperTest
* Author    : Bruna Girão
* Date      : 17-10-2023
***************************************************************************************************/
public with sharing class EvenOrOddHelper {
    
    public String evenOrOdd(Integer num) {

        if(num == null) num = 0;

        return Math.mod(num, 2) == 0 ? 'even' : 'odd';
    }
}