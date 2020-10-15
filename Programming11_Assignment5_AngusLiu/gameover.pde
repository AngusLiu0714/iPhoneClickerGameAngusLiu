void gameover () {
  //music
  theme.pause ();
  gameover.play ();
   

  background (22, 212, 247);
  fill(0);
  textSize(75);
  text ("GAME OVER", 300, 100); 
  textSize (30); 
  text ("HIGHSCORE: " + highscore, 130, 570);

//Return home (Intro Page)
  fill (255); 
  tactile (300, 470, 300, 120);
  rect (300, 470, 300, 110);
  fill (0);
  textSize (40); 
  text ("Return Home", 300, 470);
} //////////////////////////////////end of gameover 


void gameoverClicks () {
  reset ();

  if (highscore< score) {
    highscore = score;
  }

  mode=INTRO;
} ///////////////////////////////////////// end of gameoverClicks 
