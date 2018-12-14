String[] lines;
StringParser stringparsel;
StringParser stringpars;
StringParser stringparson;
int grad, grades, gradeson;
double wid1, wid2, wid3;
String type=" ";
String typed=" ";
//to add the "your own text" segment uncomment it and move other 2 segments down +100 y 

void setup() {

  size(600, 400);
  setup2();
}
void setup2() {

  //lines=loadStrings("Kare11.txt");
  //String txt3 = join(lines, " ");
  stringparsel = new StringParser(typed);
  //System.out.println(stringparsel);
  println(typed);

  System.out.println("Words: "+stringparsel.countWords());
  System.out.println("Vowels: "+stringparsel.countVowels());
  System.out.println("Exceptions: "+stringparsel.countException());
  System.out.println("Syllables: "+stringparsel.countSyllables());
  System.out.println("Sentences: "+stringparsel.countSentences());
  System.out.println("Flesch: "+stringparsel.getFlesch());
  System.out.println("Grade: d"+stringparsel.gradeLevel());
  grad=(int)stringparsel.gradeLevel();



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
  background(255);
  text("Type. \nPress enter to save. ", 400, 40);

  fill(255);
  stroke(0);
  rect(130, 25, 230, 30);

  fill(255);
  stroke(0);
  rect(130, 145, 230, 30);


  fill(255);
  stroke(0);
  rect(130, 245, 230, 30);


  fill(255);
  stroke(0);
  rect(130, 345, 230, 30);


  textSize(30);
  fill(0);
  text("Google", 20, 50);
  textSize(20);
  fill(0);
  text("" + type, 135, 50);

  textSize(14);
  text("Your Text", 20, 100);
  text(""+typed, 20, 125);
  text("Grade Level", 30, 165 );

  text(grad, 380, 165);
  fill(0);
  stroke(0);
  wid3= 230*(grad*.1);
  if (wid3>=0) {
    rect(130, 145, (int)wid3, 30);
  }

  textSize(14);
  text("New York Times", 20, 200);
  text("WASHINGTON — President Trump and congressional leaders are racing against...", 20, 225);
  //enter a line of text from the New York Times Article
  text("Grade Level", 30, 265 );

  text(gradeson, 380, 265);
  fill(0);
  stroke(0);
  wid1= 230*(gradeson*.1);
  rect(130, 245, (int)wid1, 30);


  text("Kare 11", 20, 300);
  text("As we get into the holiday baking season, the Centers for Disease Control...", 20, 325);
  //enter a line of text from Kare 11 article
  text("Grade Level", 30, 365 );

  text(grades, 380, 365);
  fill(0);
  stroke(0);
  wid2= 230*(grades*.1);
  rect(130, 345, (int)wid2, 30);
}
void keyPressed() {
  // If the return key is pressed, save the String and clear it
  if (key == '\n' ) {
    typed = type;
    setup2();
    // A String can be cleared by setting it equal to ""
    type = " ";
  } else {
    // Otherwise, concatenate the String
    // Each character typed by the user is added to the end of the String variable.
    type = type + key;
  }
}
