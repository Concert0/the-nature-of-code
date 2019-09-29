int[] randomNumbers;

void setup(){
  size(640,240);
  randomNumbers = new int[20];
}
void draw(){
  background(255);
  int index = int(random(20));
  randomNumbers[index]++;
  stroke(0);
  fill(150);
  int w = width/randomNumbers.length;
  for(int i = 0; i < randomNumbers.length; i++)
    rect(w*i, height - randomNumbers[i], w - 1, randomNumbers[i]);
}
