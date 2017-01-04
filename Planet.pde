class Planet {
  float x, y, size;
  float speed = 0;
  float acceleration = 0.2;

  Planet(float _x, float _y, float _size) {
    x = _x;
    y = _y;
    size = _size;
  }

  void display() {
  }

  void drop() {
    speed = speed + acceleration;
    y = y + speed;
    if (y > height-size/2) {
      speed = speed * - 0.5;
      y = constrain(y, 0, height-size/2);
    }
  }
  
  void scared() {
    fill(0);
    ellipse(x,y+size/5,size/5, size/3);
  }
  
}

