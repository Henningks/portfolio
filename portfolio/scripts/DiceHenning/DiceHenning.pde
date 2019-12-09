Die d1;
Die d2;
Die d3;
Die d4;
Die d5;
//Die die;
void setup()
{
  size(600, 600);
  noLoop();
}
void draw()
{
  background(0);
  //for(int i=50; i<500; i+=100){
    //for(int j= 100; j<400; j+=250){
      //die= new Die (i,j);
      //die.show();
    //}
  //}
  //textSize(32);
  //fill(255);
  //text("Can you get a yatzhee?", 120, 50);
  //text("Player 1:", 50, 230);
  //text("Player 2:", 50, 480);
  
  d1=new Die(50, 250);
  d2=new Die(150, 250);
  d3=new Die(250, 250);
  d4=new Die(350, 250);
  d5=new Die(450, 250);
  d1.show();
  d2.show();
  d3.show();
  d4.show();
  d5.show();
  
}

void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int x;
  int y;
  int rand=(int)(Math.random()*6)+1;
  //int rand=1;
  int colorRand=(int)(Math.random()*255);
  int colorRand1=(int)(Math.random()*255);
  int colorRand2=(int)(Math.random()*255);
  //int total=rand+rand;//d1.rand+d2.rand+d3.rand+d4.rand+d5.rand;

  Die(int x, int y) //constructor
  {
    this.x=x;
    this.y=y;
  }
  void roll()
  {
    
  }
  void show()
  {
    fill(255, 255, 255);
    rect(x, y, 100, 100, 10);
    if(d1.rand==d2.rand&& d1.rand==d3.rand&& d1.rand==d4.rand&& d1.rand==d5.rand){
    textSize(100);
    fill(colorRand, colorRand1, colorRand2);
    text("Yatzhee!!!", 65, 150);
    textSize(100);
    text("You Win!", 80, 500);
    //println(total);

    }else if(d1.rand!=d2.rand || d1.rand!=d3.rand || d1.rand!=d4.rand || d1.rand!=d5.rand){
    textSize(100);
    fill(colorRand, colorRand1, colorRand2);
    text("Try Again!", 60, 150);
    }
    
    if (mousePressed) {

      if (rand==1) {
        fill(colorRand, colorRand1, colorRand2);
        ellipse(x+50, y+50, 20, 20);
    
    } else if (rand==2) {
        fill(colorRand, colorRand1, colorRand2);
        ellipse(x+25, y+25, 20, 20);
        ellipse(x+75, y+75, 20, 20);
    
    } else if (rand==3) {
        fill(colorRand, colorRand1, colorRand2);
        ellipse(x+25, y+25, 20, 20);
        ellipse(x+75, y+75, 20, 20);
        ellipse(x+50, y+50, 20, 20);
    
    } else if (rand==4){
        fill(colorRand, colorRand1, colorRand2);
        ellipse(x+25, y+25, 20, 20);
        ellipse(x+75, y+75, 20, 20);
        ellipse(x+75, y+25, 20, 20);
        ellipse(x+25, y+75, 20, 20);
     
    } else if (rand==5) {
        fill(colorRand, colorRand1, colorRand2);
        ellipse(x+25, y+25, 20, 20);
        ellipse(x+75, y+75, 20, 20);
        ellipse(x+75, y+25, 20, 20);
        ellipse(x+25, y+75, 20, 20);
        ellipse(x+50, y+50, 20, 20);
    
    } else if (rand==6) {
        fill(colorRand, colorRand1, colorRand2);
        ellipse(x+25, y+25, 20, 20);
        ellipse(x+75, y+75, 20, 20);
        ellipse(x+75, y+25, 20, 20);
        ellipse(x+25, y+75, 20, 20);
        ellipse(x+25, y+50, 20, 20);
        ellipse(x+75, y+50, 20, 20);
      }
    }
}
}
