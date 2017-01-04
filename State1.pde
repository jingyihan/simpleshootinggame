//animation
void state1() { 
  boolean startShake=false;
  boolean displayPlayer=false;
  
  // draw the stars
  for (int i = 0; i < starX.length; i++) { 
    fill(random(50, 255)); 
    if (random(10) < 1) {
      starColor[i] = int(random(100, 255));
    }
    fill(starColor[i]);
      ellipse(starX[i], starY[i], starSize, starSize); 
  }

  //draw the planets
  earth.display();
  moon.display();
  for (int i = 0; i < 4; i++) {
    star[i].display();
  }
  
  //animation: call the movements
  if (millis()>=3000 && millis()<=5000) {
    startShake = true;
  }
  if (startShake) {
    earth.shake();
  }
  if (millis()>= 5000) {
    startShake = false;
    displayPlayer = true;
  }
  if (displayPlayer) {
    thePlayer.display();
    thePlayer.move();
    earth.scared();
    moon.scared();
    for (int i = 0; i < 4; i++) {
      star[i].scared();
    }
  }
  if (millis()>=6000) {
    for (int i = 0; i < 4; i++) {
      star[i].drop();
    }
    earth.drop();
    moon.drop();
    
    //instruction
    fill(245);
    textSize(30);
    text("Press Any Key To Start", width/5, height/5);
  }
}



