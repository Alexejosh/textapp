import java.util.Scanner;

String text;
String [] words ;
String [] sentence ;
char [] characters ;



public class StringParser {

  public StringParser() {
  }
  public StringParser(String txt) {
    text=txt;
    words = text.split("[\\,!\\s]+");
    sentence = text.split("[\\!.?]");
    characters = text.toCharArray();
  }

  /**
   *countWords();
   * A "word" is defined as a contiguous string of alphabetic characters
   * i.e. any upper or lower case characters a-z or A-Z.  This method completely 
   * ignores numbers when you count words, and assumes that the document/paragraph does not have 
   * any strings that combine numbers and letters. 
   */

  public int countWords() {

    return words.length;
  }

  public int countVowels() {
    int vowels=0;
    for (int i=0; i<characters.length; i++) {
      if (characters[i]=='a'||characters[i]=='e'||characters[i]=='i'||characters[i]=='o'||characters[i]=='u'||characters[i]=='y') {//could also make a for loop
        vowels++;
      }
    }
    return vowels;
  }
  /**
   * Get the total number of syllables in the document (the paragraph). 
   * To count the number of syllables in a word, use the following rules:
   *       Each contiguous sequence of one or more vowels is a syllable, 
   *       with the following exception: a lone "e" at the end of a word 
   *       is not considered a syllable unless the word has no other syllables. 
   *       You should consider y a vowel.
   */

  public int countException() {
    int except= 0;
    for ( int i =0; i<characters.length-1; i++) {
      if (characters[i] == 'a'||characters[i] == 'e'||characters[i]=='i'||characters[i]=='o'||characters[i]=='u'||characters[i]=='y') {
        if (characters[i+1] == 'a'||characters[i+1] == 'e'||characters[i+1]=='i'||characters[i+1]=='o'||characters[i+1]=='u'||characters[i+1]=='y')
          except++;
      }
    }

    for (int i = 0; i<characters.length-1; i++) {
      if (characters[i]=='e') {
        if (characters[i+1]==' ') {
          except++;
        }
      }
    }
    return except;
  }

  public int countSyllables() {
    return countVowels() - countException();
  }


  /**
   * Eventually write this one too. Get the number of sentences in the document/paragraph.
   * Sentences are defined as contiguous strings of characters ending in an 
   * end of sentence punctuation (. ! or ?) or the last contiguous set of 
   * characters in the document, even if they don't end with a punctuation mark.
   */

  public int countSentences() {
    String para =text; 

    String [] sentences = para.split("[.!?]");

    return sentences.length;
  }
  public double getFlesch()
  {
    double fle;
    fle=206.835-((1.015)*(countWords()/countSentences()))-(84.6 * countSyllables()); 
    return fle;
  }

  public double gradeLevel()
  {
    double grade;
    grade = (0.39 * (countWords()/countSentences()) )+ (11.8 * countSyllables())- 15.59;
    return grade;
  }
}
