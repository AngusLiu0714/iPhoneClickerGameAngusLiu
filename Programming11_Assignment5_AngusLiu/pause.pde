void pause() {
  theme.pause();
  background (0, 255, 87);
  image (pic1, 300, 300, 650, 700);

  fill (255); 
  textSize (50); 
  text ("PAUSED SCREEN", 300, 50);
  fill(255);
  square (290, 300, 200);
  fill(0);
  textSize(30);
  text("CONTINUE", 290, 300);
} ///////////////////////////////////// end of pause

void pauseClicks() {
  if (dist(300, 300, mouseX, mouseY) <=50) {
    mode=GAME;
  }
} /////////////////////////////////////// end pauseClicks
