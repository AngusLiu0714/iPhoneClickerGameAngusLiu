void game () {
  
  background (22, 197, 247);
  image (pic1, 300, 300, 625,650);
  text( "Score: " + score, width/2-90, 50);
  text ("Lives:" + lives, width/2+75, 50);
  text ("Highscore: " +highscore, width/2 , 100);

  //music 
  theme.play();



  //PAUSE BUTTON 
  stroke (0); 
  fill (255);
  circle (70, 60, 100);
   fill (0);
  textSize(40);
  text("||", 70, 55);


  //display target
  fill (255); 
  stroke (0); 
  strokeWeight (5);
  circle (x, y, d+50); 
  image (selectedImage, x, y, thickness, thickness);

  //moving 
  x= x+vx;
  y= y+vy;

  //bouncing 
  if (x < d/2+20 || x > width -d/2-20) { 
    vx= vx * -1;
  }

  if ( y < d/2 +140|| y > height-d/2-25) {  //boundry
    vy = vy * -1;
  }
} /////////////////////////////end of game

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) <d+35) {
    score= score+1;
    vx=vx*1.1;
    vy=vy*1.1;
    coin. rewind();
    coin.play();
  } else {
    lives= lives-1;
    if (lives<1) mode= GAMEOVER;
    bump.rewind();
    bump.play();
  }
  if (dist( mouseX, mouseY, 70, 70) <= 50) {
    mode= PAUSE;
    lives= lives+1;
  }
    if (highscore< score) {
    highscore = score;
    }
} //////////////////////////////// end of gameClicks
