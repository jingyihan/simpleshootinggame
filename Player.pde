class Player extends Planet {
  float acceleration;

  Player(float x, float y, float size) {
    super(x, y, size);
    acceleration = 0;
  }

  void display() {
    noStroke();
    fill(200, 200, 255, random(80));
    ellipse(x, y, size+10, size+10);
    fill(200, 200, 255);
    ellipse(x, y, size, size);
  }

  void move() { //move outof the earth
    if (x<width/1.8) {
      x = x+acceleration;
      acceleration+=0.5;
    }
  }

  boolean back() { //detect if the mouse touch the earth (game 2)
    if (dist(mouseX, mouseY, width-50, height/2) < 50) {
      return true;
    } else {
      return false;
    }
  } 
  boolean collision(ShootingStar s) {  //detect if the mouse touch the shootingStars (game 2)
    if (dist(x, y, s.x, s.y) < size - s.size) {
      return true;
    } else {
      return false;
    }
  }
}

