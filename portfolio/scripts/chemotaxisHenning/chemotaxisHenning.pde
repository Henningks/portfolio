Bacteria b [];

void setup()   
{     
  size(600, 600);  
  b=new Bacteria[30];
  for (int i=0; i<b.length; i++) {
    b[i]=new Bacteria(width/2, height/2);
  }
}   
void draw()   
{    
  background(0);
  for (int i=0; i<b.length; i++) {
    b[i].show(); 
    b[i].move();
  }
}

class Bacteria
{     
  int x, y;
  int rand=(int)(Math.random()*50);
  int R=(int)(Math.random()*250);
  int G=(int)(Math.random()*250);
  int B=(int)(Math.random()*250);
  boolean fail= false;
  boolean win= false;
  Bacteria(int x, int y) {
    this.x=x;
    this.y=y;
  }


  void move() {
    background(0);

    if (y!=600) {
      y=mouseY+(int)(Math.random()*20)-10;
      x=mouseX+(int)(Math.random()*20)-10;
      show();
    } else if (y>0) {
      y-=600; 
      show();
    }
    if (x>=356&& y<=330) { //top right-perfect
      fail=true;
    } else if (x>=10&& y>=65&& x<=300&& y<=500) { //top left-perfect
      fail=true;
    } else if (x>=300&& y>=360&& x<=550&& y<=555) { //bottom right-perfect
      fail=true;
    } else if (x<=270&& y<=600&& x>=230&& y>=500) {
      win=true;
    }


    if (fail==true&& win!=true) {
      fill(0);
      rect(0, 0, 600, 600);
      fill(255, 0, 0);
      textSize(60);
      text("You Lose", 150, 300);
    }
    if (win==true&& fail!=true) {
      fill(255);
      rect(0, 0, 600, 600);
      fill(0, 0, 255);
      textSize(60);
      text("You Win!!", 150, 300);
    }
  }

  void show() {
    fill((int)(Math.random()*250), (int)(Math.random()*250), B);
    ellipse(x, y, 15, 15);

    fill(15, 186, 38);
    noStroke();
    //boarder
    rect(60, 0, 600, 5);
    rect(595, 0, 5, 600);
    rect(0, 595, 600, 5);
    rect(0, 70, 5, 600);

    //Maze
    rect(0, 70, 300, 450); //top left
    rect(355, 5, 300, 315); //top right
    rect(300, 370, 250, 180); //bottom right
    rect(0, 500, 230, 450); //bottom left


    //rect(100, 170, 200, 100);
    //rect(0, 70, 200, 100);
    //rect(0, 70, 200, 100);
  }
}
