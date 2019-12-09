class OddballParticle implements Particle {
  float X, Y, speed, angle;
  int r=(int)(Math.random()*255);
  int g=(int)(Math.random()*255);
  int b=(int)(Math.random()*255);
  int l=(int)(Math.random()*15);
  int w=(int)(Math.random()*15);

  OddballParticle() {
    X= height/2+(int)(Math.random()*100);
    Y= width/2+(int)(Math.random()*100);
    speed= 10;
    angle= (int)(Math.random()*5)+1;
  }
  void move() {
    X+=Math.cos(angle)*speed;
    Y+=Math.sin(angle)*speed;
    angle+= .05;

    //if(angle==.065){
    //r=0;
    //g=0;
    //b=0;
    //}else if (X<70){
     //X= 70;
    //}
  }

  void show() {
    fill(r, g, b);
    ellipse(X, Y, l, w);
  }
}  
