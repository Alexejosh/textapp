String[] lines;
StringParser stringpars;

void setup() {
  lines=loadStrings("NewYorkTimes.txt");
  
  

  
  
  String txt = join(lines, " ");
  stringpars = new StringParser(txt);
  System.out.println(stringpars);
  println(txt);
  
  System.out.println("Words: "+stringpars.countWords());
  System.out.println("Vowels: "+stringpars.countVowels());
  System.out.println("Exceptions: "+stringpars.countException());
  System.out.println("Syllables: "+stringpars.countSyllables());
  System.out.println("Sentences: "+stringpars.countSentences());
  System.out.println("Flesch: "+stringpars.getFlesch());
  System.out.println("Grade: "+stringpars.gradeLevel());
  
}

void draw() {
  
}
