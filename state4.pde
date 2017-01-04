//winning screen
void state4(){
  //draw the stars
  for (int i = 0; i < starX.length; i++) {
    fill(random(50, 255)); 
    if (random(10) < 1) {
      starColor[i] = int(random(100, 255));
    }
    fill(starColor[i]);
      ellipse(starX[i], starY[i], starSize, starSize);
  }
  
  textSize(40);
  fill(255);
  text("YOU ARE BACK TO EARTH!",width/6,height/2);
}
