class Moon extends Planet{
  PImage moon;
  
  Moon(float x, float y, float size){
     super(x, y, size);
     moon = loadImage("moon.png");
  }
  
  void display(){
    imageMode(CENTER);
    image(moon, x, y, size,size);
  }
}
