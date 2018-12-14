String[] lines;
StringParser stringpars;
StringParser stringparson;
int grades, gradeson;
double wid1,wid2;
//to add the "your own text" segment uncomment it and move other 2 segments down +100 y 
// and create a variable for its grades and its width 
void setup() {
  
  size(600,400);
  background(255);
  
  fill(255);
  stroke(0);
  rect(130, 25, 230, 30);
  
  //fill(255);
  //stroke(0);
  //rect(130, 145, 230, 30);
  
  
  fill(255);
  stroke(0);
  rect(130, 145, 230, 30);
  
  
  fill(255);
  stroke(0);
  rect(130, 245, 230, 30);
  
  lines=loadStrings("Kare11.txt");
  String txt1 = join(lines, " ");
  stringpars = new StringParser(txt1);
  //System.out.println(stringpars);
  println(txt1);
  
  
  System.out.println("Words: "+stringpars.countWords());
  System.out.println("Vowels: "+stringpars.countVowels());
  System.out.println("Exceptions: "+stringpars.countException());
  System.out.println("Syllables: "+stringpars.countSyllables());
  System.out.println("Sentences: "+stringpars.countSentences());
  System.out.println("Flesch: "+stringpars.getFlesch());
  System.out.println("Grade: s"+stringpars.gradeLevel());
  grades=(int)stringpars.gradeLevel();
  
  lines=loadStrings("NewYorkTimes.txt");
  String txt2 = join(lines, " ");
  stringparson = new StringParser(txt2);
  //System.out.println(stringpars);
  println(txt2);
  
  System.out.println("Words: "+stringparson.countWords());
  System.out.println("Vowels: "+stringparson.countVowels());
  System.out.println("Exceptions: "+stringparson.countException());
  System.out.println("Syllables: "+stringparson.countSyllables());
  System.out.println("Sentences: "+stringparson.countSentences());
  System.out.println("Flesch: "+stringparson.getFlesch());
  System.out.println("Grade: on"+stringparson.gradeLevel());
  gradeson=(int)stringparson.gradeLevel();
  
  
}

void draw() {
  textSize(30);
  fill(0);
  text("Google", 20, 50);
  
  //textSize(14);
  //text("Your Title", 20,100);
  //text("text", 20, 125);
  //text("Grade Level", 30, 165 );
 
  
  
  textSize(14);
  text("New York Times", 20,100);
  text("WASHINGTON — President Trump and congressional leaders are racing against...", 20, 125);
  //enter a line of text from the New York Times Article
  
  text("Grade Level", 30, 165 );
  
  text(gradeson, 380, 165);
  fill(0);
  stroke(0);
  wid1= 230*(gradeson*.1);
  rect(130, 145, (int)wid1, 30);

 
  text("Kare 11", 20,200);
  text("As we get into the holiday baking season, the Centers for Disease Control...", 20, 225);
  //enter a line of text from Kare 11 article
  
  text("Grade Level", 30, 265 );
  
  text(grades,380 ,265);
  fill(0);
  stroke(0);
  wid2= 230*(grades*.1);
  rect(130, 245, (int)wid2, 30);
  
}
