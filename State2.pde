//game 1
void state2() {
  //local var.
  thePlayer = new Player(40, mouseY, 40);//change the player's location
  boolean starsIn = false;
  noCursor();//hide the mouse
  
  //draw the stars (moving)
  background(17, 17, 32);
  noStroke();
  for (int i = 0; i < starX.length; i++) {
    fill(random(50, 255)); 
    if (random(10) < 1) {
      starColor[i] = int(random(100, 255));
    }
    fill(starColor[i]);
    if (starsIn) {
      ellipse(starX[i], starY[i], starSize, starSize);
      starX[i]--; //stars moving left
    }
    if (starX[i]<=0) {
      starsIn = false;
    }
    if (!starsIn) { //draw more stars once some stars is going off the screen
      starX[i]=width;
      starsIn = true;
    }
  }
  
  //game 1
  if (!lose) {
    thePlayer.display();
    drawShootingStar();
    timer();
    fill(255);
    textSize(30);
    text("Score: " + score, 30, 40);
    if(score==10){ //after 5 shootingstars is shot, move to the next level
      state= 3;
    }
  } else { //losing condition
    fill(255);
    textSize(30);
    text("YOU LOSE", width/2-50, height/2);
    text("SCORE:" + score, width/2-50, height/2+30);
  }
}

//draw the shootingstars
void drawShootingStar() {
  for (int i = shootingStar.size ()-1; i>=0; i--) {
    ShootingStar shootingStars = shootingStar.get(i);
    shootingStars.display();
    shootingStars.move();
    if (attack) {
      if (mouseY < shootingStars.y + shootingStars.size && mouseY > shootingStars.y - shootingStars.size) {
        shootingStar.remove(i);
        score = score + 1;
      }
    }
    if (shootingStars.x < 0) { //if the shootingstars touch the edge of the screen, the player lose
      lose = true;
    }
  }
}

//timing for shootingstars to enter the screen
void timer() {
  int passedTime = millis() - savedTime;
  if (passedTime > totalTime) {
    addShootingStar();
    savedTime = millis();
  }
}

//add to arraylist
void addShootingStar() {
  shootingStar.add(new ShootingStar(width-40, random(40, height-40)));
}

//mouse control
void mousePressed() {
  stroke(255);
  line(width, mouseY, 0, mouseY);
  attack = true;
}

void mouseReleased() {
  attack = false;
}
