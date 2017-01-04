/*Jing Han
  Computer Science 30
  Jun.16, 2015
  Mr. Schellenberg
  1. Press anykey to start the game
  2. click the right mouse botton to shot the shottingstars
  3. the ellipse will follow the mouse, aviod the shottingstars and touch the earth to win the game
*/

//animation
Player thePlayer;
Earth earth;
Moon moon;
Star[] star = new Star[4];
//starbackground
int[] starX = new int[60];
int[] starY = new int[60];
color[] starColor = new color[1000];
int starSize = 2;
//game1
ArrayList<ShootingStar> shootingStar;
boolean attack = false;
boolean lose = false;
int score = 0;
//timer
int savedTime;
int totalTime = 1000;
//game2
boolean lose2 = false;
//game state
int state = 1;

void setup() {
  size(800, 600);
  //star background
  for (int i = 0; i < starX.length; i++) {
    starX[i] =int(random(width));
    starY[i] = int(random(height));
    starColor[i] = color(int(random(100, 255)));
  }
  //animation
  thePlayer = new Player(width/3+50, height/3, 30);
  earth = new Earth(width/3, height/3, 100);
  moon = new Moon(width/6, height/1.5, 50);
  for (int i = 0; i < 4; i++) {
    star[i] = new Star(random(70, width-70), random(70, height-70), random(30, 70));
  }
  //game1, game2 shootingstars
  shootingStar = new ArrayList<ShootingStar>();
}


void draw() {
  background(17, 17, 32);
  noStroke();
  if (state==1) {
    state1(); // animation
  } else if (state==2) {
    state2(); //game 1
  }else if(state==3){
    state3(); //game 2
  }else if(state==4){
    state4(); // victory screen
  }else if(state==5){
    state5(); //fail screen
  }
}

void keyPressed(){
  state = 2; // press any key to start game 1
}




