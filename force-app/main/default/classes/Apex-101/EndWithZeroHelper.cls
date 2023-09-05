/************************************************************************************************
* Name      : EndWithZeroHelper
* Purpose   : Challenge #90 - Ends With 0
              Given an integer, return true if the integer ends with 0, otherwise return false.
* TestClass : EndWithZeroHelperTest
* Author    : Bruna Girão
* Date      : 05-09-2023
***************************************************************************************************/
public with sharing class EndWithZeroHelper {
    
    public Boolean isEndWithZero(Integer num){
        return Math.mod(num, 10) == 0 ? true : false;
    }

}