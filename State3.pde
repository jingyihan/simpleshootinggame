//game 2
void state3(){
  //local var.
  thePlayer = new Player(mouseX, mouseY, 40);
  earth = new Earth(width-50,height/2, 50);
  totalTime = 500;
  
  //draw the stars
  for (int i = 0; i < starX.length; i++) {
    fill(random(50, 255)); 
    if (random(10) < 1) {
      starColor[i] = int(random(100, 255));
    }
    fill(starColor[i]);
      ellipse(starX[i], starY[i], starSize, starSize);
  }
  
  //game 2
  if (lose2 == false){
    thePlayer.display();
    drawShootingStar2();
    earth.display();
    timer2();
  } if(lose2) {
    state = 5; // direct to losing condition
  }
}

//draw shootingstars
void drawShootingStar2() {
  for (int i = shootingStar.size ()-1; i>=0; i--) {
    ShootingStar shootingStars = shootingStar.get(i);
    shootingStars.display();
    shootingStars.move2();
    if(thePlayer.collision(shootingStars)){
      lose2 = true; //if the player touchs the shootingstars, the player loses
    }
  }
  if (thePlayer.back()) {
      state = 4; //if the player touchs the earth, the player wins
    }
}

void timer2() {
  int passedTime = millis() - savedTime;
  if (passedTime > totalTime) {
    addShootingStar2();
    savedTime = millis();
  }
}

void addShootingStar2() {
  shootingStar.add(new ShootingStar(random(40, width-40),random(40,height-40)));
}
