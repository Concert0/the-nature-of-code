int x,y,w;
int X,Y,W;
boolean showline = true;
void setup(){
  size(800,800);
  frameRate(1000);
  X = width/2;
  Y = height/2;
  W = 600;
}
int smw = 10;
int angle = 0;
float[] increments = new float[]{180,90,45,22.5, 11.25};
int increment_index = 0;
void draw(){
  x = int(random(1000));
  y = int(random(1000));
  w = int(random(200));
  noStroke();
  fill(int(random(255)),int(random(255)),int(random(255)),int(random(20)));
  circle(x,y,w);
  
  
  fill(int(random(50)), int(random(50)), int(random(50)),30);
  noStroke();
  circle(X, Y, W);
  stroke(255);
  for(float i = 0; i < 360; i += increments[increment_index]){
    float xr = W/2*cos(radians(i));
    float yr = W/2*sin(radians(i));
    if(showline)
      line(X + xr,Y + yr, X - xr, Y - yr);
    fill(255);
    circle(X + ((W/2-smw))*cos(radians(i))*cos(radians(angle+i)), Y - (W/2-smw)*sin(radians(i))*cos(radians(angle+i)),20);
  }
  
  angle += 1;
}

void keyPressed() {
    if (key == CODED) {
      if (keyCode == UP && increment_index < increments.length - 1)
        increment_index += 1;
      else if(keyCode == DOWN && increment_index > 0)
        increment_index -= 1;
      keyPressed=false;
    }
    else if(key == 'h'){
        showline = !showline;
      }
}
