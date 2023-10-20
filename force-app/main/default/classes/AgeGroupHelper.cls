/************************************************************************************************
* Name      : AgeGroupHelper
* Purpose   : Challenge 17 - Age Group: Given a person's age, return their age group as a 
              string: 'Infant' for ages 0-1, 'Child' for ages 2 - 14, 'Youth' for ages 15 - 21, 
              and 'Adult' for ages 22+.
* TestClass : AgeGroupHelperTest
* Author    : Bruna Girão
* Date      : 20-10-2023
***************************************************************************************************/
public with sharing class AgeGroupHelper {
    public String ageGroup(Integer n) {
        return n == null || n  < 0 ? 'Invalid age': (n >= 0 && n <= 1 ? 'Infant' : (n >= 2 && n <= 14 ? 'Child' : (n >= 15 && n <= 21 ? 'Youth' : 'Adult')));
    }
}