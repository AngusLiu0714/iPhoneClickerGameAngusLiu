//tactile for iphone's on options page 


void tactile (int x, int y, int w, int h) { 
  if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+ h/2 ) { 
    fill (255, 0, 0);
  } else { 
    fill (255);
  }
} //end tactile

void iphone11promaxOnOff () {
  if (iphone11promaxOn == true) { 
    stroke (255, 0, 0); 
    strokeWeight (5);
  } else {
    stroke (0); 
    strokeWeight (3);
  }
}

////////////////////////////////////// end of iphone11promax

void iphone10ROnOff () {
  if (iphone10ROn == true) { 
    stroke (255, 0, 0); 
    strokeWeight (5);
  } else {
    stroke (0); 
    strokeWeight (3);
  }
}

///////////////////////////////////// end of iphone10R
void iphonese2OnOff () {
  if (iphonese2On == true) { 
    stroke (255, 0, 0); 
    strokeWeight (5);
  } else {
    stroke (0); 
    strokeWeight (3);
  }
}


///////////////////////////////////////end of iphone se2

void reset () {
  //target
  x= width/2; 
  y= height/2;
  d= 75; 
  vx= random (-5, -5); 
  vy= random (-5, 5); 

  //game initialization 
  score= 0; 
  lives= 3;
}
