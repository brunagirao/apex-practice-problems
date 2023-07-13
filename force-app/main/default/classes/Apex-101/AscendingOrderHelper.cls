/************************************************************************************************
* Name      : AscendingOrderHelper
* Purpose   : Challenge #20 Ascending Order: Given three Integers a, b, and c, return true if 
              they are in ascending order. For our purposes, two equal numbers will be considered 
              to be in an ascending order.
* TestClass : AscendingOrderHelperTest
* Author    : Bruna Girão
* Date      : 10-07-2023
***************************************************************************************************/
public with sharing class AscendingOrderHelper {

    public Boolean isInAscendingOrder(Integer a, Integer b, Integer c) {
        return b >= a && c >= b;
    }
}