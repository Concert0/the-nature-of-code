Walker walker;
color[] C;
float D = 0;
void setup(){
  size(1080, 640);
  C = new color[]{#EFE2BA, #D79922, #F13C20, #4056A1, #C5CBE3};
  walker = new Walker();
  background(0);
  frameRate(1000);
}
void draw(){
   walker.display();
   walker.step();
  
}
class Walker{
  int x;
  int y;
  int col;
  int counter;
  Walker(){
  col = C[int(random(C.length))];
  x = width/2;
  y = height/2;
  counter = 0;
  }
  void display(){
    stroke(col);
    point(x,y);
    strokeWeight(1);
    counter += 1;
    if(counter % 5000 == 0)
      col = C[int(random(C.length))];
      
  }
  void step(){
    int xstep = (int(random(3)) - 1);
    int ystep = (int(random(3)) - 1);
    if(x+xstep > 0 && x+xstep < width && y+ystep > 0 && y+ystep < height){
      x += xstep;
      y += ystep;
    }
    
    
  }
}

  
