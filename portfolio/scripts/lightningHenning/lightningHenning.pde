int startX=300;
int startY=0;
int endX=300;
int endY=0;
//PImage img;
int startTime;
int size=0;
int randX= (int)(Math.random()*401)+100;
int randY= (int)(Math.random()*401)+100;

void setup()
{
  size(600, 600);
  strokeWeight(10);
  background(0);
  //img=loadImage("cloud.png");
  reset();
}
void draw() {

  //imageMode(CENTER);
  stroke((int)(Math.random()*51)+200, (int)(Math.random()*51)+200, 0);
  while (endY<height) {
    endY=startY+(int)(Math.random()*10);
    endX=startX+(int)(Math.random()*19)-9;
    line(startX, startY, endX, endY);
    startX=endX;
    startY=endY; 
    fill(100);
    ellipse(randX, randY, 200, 200); 
    //image(img, randX, randY, 200, 200);
  }
  int time = millis()-startTime;
  if (time>2000) {
    startTime= millis();
    reset();
  }
}


void reset() {
  randX= (int)(Math.random()*401)+100;
  randY= (int)(Math.random()*401)+100;
  startX=randX;
  startY=randY;
  endX=0;
  endY=300;
  fill(0);
  rect(-10, -10, 700, 700);
}

void mousePressed()
{
  startX=randX;
  startY=randY;
  endX=300;
  endY=0;
  fill(0);
  rect(-10, -10, 700, 700);
}
