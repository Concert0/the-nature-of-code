//Big circle coordinates
int X,Y,W;
boolean showline = true;
void setup(){
  size(800,800);

  X = width/2;
  Y = height/2;
  W = 500;

  
}
//small_circle_width
int smw = 200;
int angle = 0;
float[] increments = new float[]{180,90,45,30,22.5, 11.25};
int increment_index = 0;
void draw(){
  
    
  background(0);
  fill(77, 81, 128);
  noStroke();
  circle(X, Y, W);
  stroke(255);
  for(float i = 0; i < 360; i += 12){
    float xr = W/2*cos(radians(i));
    float yr = W/2*sin(radians(i));
    if(showline)
      line(X + xr,Y + yr, X - xr, Y - yr);
    fill(255);
    circle(X + (W/2-10)*cos(radians(i))*cos(radians(angle+i)), Y - (W/2-10)*sin(radians(i))*cos(radians(angle+i)),20);
  }
  
  //float x = X + (W/2 - 100) * cos(radians(angle));
  //float y = Y - (W/2 - 100) * sin(radians(angle));
  //fill(255);
  //circle(x,y,200);
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
