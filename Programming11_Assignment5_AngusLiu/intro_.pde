void intro () {
  
  background (22, 247, 255);
  textSize(50);
  text ("iPhone Clicker", 300, 200);

//Options button
  fill (255);
  tactile (160, 500, 200, 100);
  rect (160, 500, 200, 100); 
  fill (0);
  stroke (0);
  textSize (30);
  text ("Options", 160, 500);


//Start Here button
  fill (255);
  tactile (425, 500, 200, 100);
  rect (425, 500, 200, 100); 
  fill (0);
  stroke (0);
  textSize (30);
  text ("Start Here", 425, 500);
} //./////////////////////// end intro

void introClicks () {
  if (dist(160, 530, mouseX, mouseY) <=100) {
    mode=OPTIONS;
  }

  if (dist(470, 530, mouseX, mouseY) <=100) {
    mode=GAME;
  }

} ///////////////////////////////// end of introClicks 
