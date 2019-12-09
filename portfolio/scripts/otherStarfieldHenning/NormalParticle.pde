class NormalParticle implements Particle {
  float X, Y, speed, angle;
  int r=(int)(Math.random()*255);
  int g=(int)(Math.random()*255);
  int b=(int)(Math.random()*255);
  int s=second();

  NormalParticle() {
    X= height/2+(int)(Math.random()*100);//width/2;
    Y= width/2+(int)(Math.random()*100);//height/2;
    speed= 10;
    //speed= (float)Math.random()*10;
    angle= (int)(Math.random()*5)+1;//(float)(Math.PI*2)*(float)Math.random();
  }
  void move() {
    X+=Math.cos(angle)*speed;
    Y+=Math.sin(angle)*speed;
    angle+= .05;
    //if(s%10==0){
    //  speed=10;
    //}
    //if(s!=0){
    //  speed+=.01;
    //}
    //println(speed);
  }

  void show() {
    fill(r, g, b);
    ellipse(X, Y, 15, 15);
  }
}
