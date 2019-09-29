Walker[] walkers;
float D = 0;
void setup(){
  size(1080, 640);
  walkers = new Walker[8];
  for(int i=0; i< walkers.length;i++)
    walkers[i] = new Walker();
  background(255);
}
void draw(){
  for(Walker walker: walkers){
   walker.display();
   walker.step();
  }
  //circle(width/2, height/2, sqrt(D));
  //D += 16;
}
  
class Walker{
  int x;
  int y;
  int prev_x;
  int prev_y;
  int[] Color;
  Walker(){
  Color = new int[3];
  Color = new int[]{int(random(255)), int(random(255)), int(random(255))};
  prev_x = width/2;
  prev_y = height/2;
  x = width/2;
  y = height/2;
  }
  void display(){
    stroke(Color[0],Color[1],Color[2]);
    line(prev_x,prev_y,x,y);
    strokeWeight(3);
  }
  void step(){
    int move = int(random(4));
    int xstep = 0;
    int ystep = 0;
    switch(move){
      case 0:
        xstep = 1;
        ystep = 0;
        break;
      case 1:
        xstep = -1;
        ystep = 0;
        break;
      case 2:
        xstep = 0;
        ystep = 1;
        break;
      case 3:
        xstep = 0;
        ystep = -1;
        break;
    }
    //int xstep = int(random(3)) - 1;
    //int ystep = int(random(3)) - 1;
    prev_x = x;
    prev_y = y;
    x += xstep*10;
    y += ystep*10;
    
  }
}

  
