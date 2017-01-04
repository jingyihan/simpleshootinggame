class ShootingStar {
  float x;
  float y;
  float speed;
  float speedY;
  float size;
  boolean beShot;

  ShootingStar(float _x, float _y) {
    x = _x;
    y = _y;
    speed = random(5, 10);
    speedY = random(5, 10);
    size = random(10, 40);
  }

  void move() { //game 1, going horizontally across the screen
    x-=speed;
  }
  
  void move2(){ //game 2, bouncing around the screen
    x += speed;
    y += speedY;
    if (x>width -10||x<10) {
      speed *= -1;
    }else if (y>height -10||y<10) {
      speedY *= -1;
    }
  }

  void display() {
    noStroke();
    ellipseMode(CENTER);
    fill(random(100, 255), 125, 0);
    ellipse(x, y, size, size);
    fill(random(100, 255), 125, 0, random(50, 80)); // lights around
    ellipse(x, y, size+10, size+10);
  }
}

