void options () {
  background ( 22, 212, 247);

//Heading on the top
  fill (0); 
  textSize (30); 
  text ("Choose iPhone & Size", 300, 20);


  //Options of iPhone;  iPhone 11 ProMax, iPhoneXR, iPhoneSE2
  fill (255);

  
  tactile (120, 120, 60, 90); 
  iphone11promaxOnOff ();
  square (120, 120, 110);
  image (pic1, 120, 120, thickness, thickness);   

  tactile (305, 120, 60, 90);
  iphone10ROnOff ();
  square (300, 120, 110);  
  image (pic2, 305, 120, thickness, thickness);


  tactile (495, 120, 60, 90);
  iphonese2OnOff ();
  square (490, 120, 110); 
  image (pic3, 495, 120, thickness, thickness);
  

//Text for introduction/ different iPhones
  textSize (13);
  fill (0);
  text ("iPhone 11 Pro Max", 120, 190);
  text ("iPhone XR", 300, 190);
  text ("iPhone SE2", 495, 190);
  
 
  textSize (20);
  text ("INSTRUCTION/INTRODUCTION", 300, 230);
  textSize (15);
  text ( "Hi ! Welcome to the iPhone Clicker! Please select a iPhone for the game!", 300, 275);
  text ( "You will notice that as you move the indicator, it will show how thick it is", 300, 300);
  text ( "This is just to let you know what thick your thickness is! You will also be", 300, 325);
  text ( "able to see the thick your iPhone is above! To choose a iPhone, select, and press" ,300, 350); 
  text ( "the iPhone you want. Next, return to intro, and you may begin! Enjoy the game!", 300, 375);
  

  //Clicks to begin, or go back
  fill (255);
  tactile (450, 525, 250, 85);
  rect (450, 525, 250, 85); //start
  
  fill (0);
  textSize (25);
  text ("RETURN TO INTRO", 450, 530);


  //slider
  //toolbar for the slider
  fill(255);
  stroke(0);
  strokeWeight(1);
  
  
   //drawing line code
  stroke(0);
  strokeWeight(0);
  if (mousePressed) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }


//if statements

//iPhone11 Pro Max
  if (mousePressed && mouseY > 120) {
    if (iphone11promaxOn==true) {
      image(pic1, mouseX, mouseY, thickness, thickness);
    }

    if (iphone11promaxOn == false) {
      strokeWeight(thickness);
      stroke(pics);

      line(mouseX, mouseY, pmouseX, pmouseY);
    }
  }
  //iphone 10R

  if (mousePressed && mouseY > 120) {
    if (iphone10ROn==true) {
      image(pic2, mouseX, mouseY, thickness, thickness);
    }

    if (iphone10ROn== false) {
      strokeWeight(thickness);
      stroke(pics);

      line(mouseX, mouseY, pmouseX, pmouseY);
    }
  }



//iPhone SE2
  if (mousePressed && mouseY > 120) {
    if (iphonese2On==true) {
      image(pic3, mouseX, mouseY, thickness, thickness);
    }

    if (iphonese2On == false) {
      strokeWeight(thickness);
      stroke(pics);

      line(mouseX, mouseY, pmouseX, pmouseY);
    }
  }


  //slider
  strokeWeight (5);
  line(50, 500, 150, 500); //track
  ellipse(sliderX, 500, 20, 20); //knob



  //Slider (moveable), and the thiness/thickness
  if (mousePressed) {
    if (dist(sliderX, 500, mouseX, mouseY) < 50) {
      sliderX=mouseX;
    }
      if (sliderX <50) { 
        sliderX=50;
      }

      if (sliderX > 150) {
        sliderX=150;
      }


      thickness= map(sliderX, 50, 150, 30, 100);
    }

  
}

//////////////////////////////////////end of option

void mouseDragged () {

  if (iphone11promaxOn== false) {
  } else { 
    image (pic1, 120, 120, 60, 90);
    selectedImage= pic1;
  }


  if (iphone10ROn== false) {
  } else { 
    //brown drawing
    image (pic2, 305, 120, 60, 90);
    selectedImage= pic2;
  }

  if (iphonese2On== false) {
  } else { 
    //brown drawing
    image (pic3, 495, 120, 60, 90);
    selectedImage= pic3;
  }
} ////////////////////////////////  end of dragged


void optionsClicks() {

  if (dist(470, 530, mouseX, mouseY) <=130) {
    mode=INTRO;
  }
  if (dist(120, 120, mouseX, mouseY) <=130) {
    selectedImage= pic1;
  }
  if (dist(300, 120, mouseX, mouseY) <=130) {
    selectedImage= pic2;
  }
  if (dist(490, 120, mouseX, mouseY) <=130) {
    selectedImage= pic3;
  }
} ///////////////////////////////////////// end of optionClicks
