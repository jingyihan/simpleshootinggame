//losing screen
void state5() {
  //draw the stars
  for (int i = 0; i < starX.length; i++) {
    fill(random(50, 255)); 
    if (random(10) < 1) {
      starColor[i] = int(random(100, 255));
    }
    fill(starColor[i]);
    ellipse(starX[i], starY[i], starSize, starSize);
  }

  fill(255);
  textSize(30);
  text("YOU LOSE", width/2-50, height/2);
}

