//Darren Yang, 1-3, September 24th, Colour Game

//mode variables
int mode;
final int INTRO = 0;
final int MATCH = 1;
final int GAME = 2;
final int GAMEOVER = 3;

//gif and font
PImage [] gif;
int n;
int f = 0;
PFont utroligt;
PFont buck;

//array
String[] words;
color [] colors;
color [] timercolors;
color red = #E30202;
color green = #16C632;
color blue = #0D49BC;
color yellow = #F7E943;
color orange = #F0983A;
color purple = #962ED8;
int w = int(random(0, 6));
int c = int(random(0, 6));
int tc = int(random(0, 6));

//other variables
int score = 0;
int high = 0;
float bar = 480;
float timer = 480;
int coinflip;
int thick = 1;
int thick1 = 1;
int thick2 = 3;

void setup () {
  
  size (600, 600);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  
  //gif and font
  n = 18;
  gif = new PImage[n];
  utroligt = createFont("UtroligtDEMO.otf", 120);
  buck = createFont("Buckerley.ttf", 120);
  
  //array
  words = new String [6];
  colors = new color [6];
  timercolors = new color [6];
  
  words [0] = "Red";
  colors [0] = red;
  timercolors [0] = red;
  
  words [1] = "Green";
  colors [1] = green;
  timercolors [1] = green;
  
  words [2] = "Blue";
  colors [2] = blue;
  timercolors [2] = blue;
  
  words [3] = "Yellow";
  colors [3] = yellow;
  timercolors [3] = yellow;
  
  words [4] = "Orange";
  colors [4] = orange;
  timercolors [4] = orange;
  
  words [5] = "Purple";
  colors [5] = purple;
  timercolors [5] = purple;
  
  int i = 0;
  while (i < n) {
    gif[i] = loadImage("frame_" + i + "_delay-0.07s.gif");
    i++;  
  }
}

void draw () {
  
  if (mode == INTRO) {
    intro();
  } else if (mode == MATCH) {
    match();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
  
}
