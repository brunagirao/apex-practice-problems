/************************************************************************************************
* Name      : AorAnHelper
* Purpose   : Challenge 21 - A or An: Given a word, prepend it with the correct indefinite 
              article ("a" or "an") followed by a space based on the following rule: words 
              starting with a vowel (a, e, i, o, or u) are prepended with "an", while words 
              starting with any other letter are prepended with "a".
* TestClass : AorAnHelperTest
* Author    : Bruna Girão
* Date      : 13-07-2023
***************************************************************************************************/
public with sharing class AorAnHelper {

    public String aOrAnFirstApproach(String word) {

        if(String.isBlank(word)) {
            return '';
        }
        
        Set<String> vowels = new Set<String>{'a', 'e', 'i', 'o', 'u'};
        String firstLetter = word.SubString(0,1).toLowerCase();
        Boolean startsWithAVowel = vowels.contains(firstLetter);
        
        String newWord = startsWithAVowel ? 'an ' + word : 'a ' + word;
    
        return newWord;
    }

    public String aOrAnSecondApproach(String word) {

        if(String.isBlank(word)) {
            return '';
        }
        
        Boolean startsWithAVowel = false;

        if(    word.startsWith('a') 
            || word.startsWith('e')
            || word.startsWith('i')
            || word.startsWith('o')
            || word.startsWith('u')
        ) {
            startsWithAVowel = true;
        }

        String newWord = startsWithAVowel ? 'an ' + word : 'a ' + word;
    
        return newWord;
    }
}