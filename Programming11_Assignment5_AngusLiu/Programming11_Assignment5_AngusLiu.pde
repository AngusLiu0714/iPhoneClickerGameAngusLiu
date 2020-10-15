//Programming 11 
//Angus Liu 
//October 6th, 2020
//Project: iPhone clickable Game 

//import minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//minim variables
Minim minim;
AudioPlayer bump, coin, theme, gameover;



//int variables
int y1;
int pics;
int score, lives, highscore; //also a target variable

int mode; 
final int INTRO= 0; 
final int OPTIONS= 1;
final int GAME= 2; 
final int PAUSE= 3; 
final int GAMEOVER= 4; 
final int HIGHSCORE=5;

//Images 
PImage pic1; //iphone 11 pro max 
PImage pic2 ; //Iphone Xr
PImage pic3; //iphone se 2


//target variab;es 
float x, y, d; 
float vx, vy ; //target velocity 
float sliderX;// sliderX (used for clickable, etc)
float thickness;



//variable for image selection 
PImage selectedImage; 

boolean iphone11promaxOn;// true or false 
boolean iphone10ROn;// true or false 
boolean iphonese2On ;// true or false 

void setup () { 
  size (600, 600);
  textAlign (CENTER, CENTER); 
  rectMode (CENTER);
  mode= INTRO;
  pic1= loadImage ("iphone11promax.png");
  pic2= loadImage ("iphone10R.jpg");
  pic3= loadImage ( "iphonese2.png");
  imageMode  (CENTER); 
  sliderX= 50;
  selectedImage= pic1;
  iphone11promaxOn= false; 
  iphone10ROn= false; 
  iphonese2On= false; 
  thickness =30;
  
  //target initialization 
  x= width/2;
  y= height/2; 
  d= 75;
  vx= random (-5, 5); 
  vy= random (-5, 5);
  score= 0; 
  lives= 3;

  //loading sound files
  minim= new Minim(this);
  coin= minim.loadFile("coin.wav" );
  bump= minim.loadFile("bump.wav" );
  gameover= minim.loadFile("gameover.wav" );
  theme= minim.loadFile("mario bros theme.mp3" );

  reset ();
} /////////////////////////////////////////end of void setup


void draw () { 

  if (mode == INTRO) {
    intro ();
  } else if (mode == OPTIONS) {
    options ();
  } else if ( mode == GAME) { 
    game ();
  } else if (mode== PAUSE) {
    pause();
  } else if ( mode== GAMEOVER) { 
    gameover ();
  } else { 
    println ("Error: Mode= " + mode);
  }
  println (mouseX, mouseY);
} /////////////////////////////////////end of void draw 
