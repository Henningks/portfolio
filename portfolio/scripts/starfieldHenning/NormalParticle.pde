class NormalParticle implements Particle {
  float X, Y, speed, angle;
  int r=(int)(Math.random()*255);
  int g=(int)(Math.random()*255);
  int b=(int)(Math.random()*255);

  NormalParticle() {
    X= width/2;
    Y= height/2;
    speed= (float)Math.random()*10;
    angle= (float)(Math.PI*2)*(float)Math.random();
  }
  void move() {
    X+=Math.cos(angle)*speed;
    Y+=Math.sin(angle)*speed;
    angle+= .065;

    //if(angle==.065){
    //r=0;
    //g=0;
    //b=0;
    //}//else if (X<70){
    // X= 70;
    //}
  }

  void show() {
    fill(r, g, b);
    ellipse(X, Y, 15, 15);
  }
}
