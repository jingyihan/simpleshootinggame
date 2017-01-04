class Earth extends Planet {
  PImage earth;

  Earth(float x, float y, float size) {
    super(x, y, size);
    earth = loadImage("earth.png");
  }

  void display() {
    imageMode(CENTER);
    image(earth, x, y, size, size);
  }

  void shake() {
    x = random(x-2, x+2);
  }

}

