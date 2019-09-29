Walker w;
void setup(){
  size(640, 360);
  w = new Walker();
  background(255);
}
void draw(){
 w.display();
 w.step();
}
  
class Walker{
  int x;
  int y;
  Walker(){
  x = width/2;
  y = height/2;
  }
  void display(){
    stroke(0);
    point(x,y);
  }
  void step(){
    int xstep = int(random(3)) - 1;
    int ystep = int(random(3)) - 1;
    x += xstep;
    y += ystep;
  }
}

  
