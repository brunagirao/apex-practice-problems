/************************************************************************************************
* Name      : TeenagerHelper
* Purpose   : Challenge #18 - Teenager: Given a person's age, return
              true if the person is a teenager (age 13 - 19).
* TestClass : TeenagerHelperTest
* Author    : Bruna Girão
* Date      : 05-07-2023
***************************************************************************************************/
public with sharing class TeenagerHelper {
     
    /**
    * @description Method responsible to verify if is a Teenager or not
    * @param age 
    * @return Boolean 
    **/
    public Boolean isTeenager(Integer age) {
        return age >= 13 && age <=19;
    }
    
}