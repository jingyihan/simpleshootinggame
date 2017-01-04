class Star extends Planet {
  float r, g, b;

  Star(float x, float y, float size) {
    super(x, y, size);
    r = random(100, 255);
    g = random(100, 255);
    b =random(100, 255);
  }

  void display() {
    fill(r, g, b);
    ellipse(x, y, size, size);
  }
  
}

