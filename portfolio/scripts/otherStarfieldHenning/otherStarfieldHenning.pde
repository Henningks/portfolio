NormalParticle[] np= new NormalParticle[20];
JumboParticle[] jp= new JumboParticle[5];
OddballParticle[] op= new OddballParticle[5];

void setup() {
  size(600, 600);
  for (int i=0; i<np.length; i++) {
    np[i]= new NormalParticle();
  }
  for (int j=0; j<jp.length; j++) {
    jp[j]= new JumboParticle();
  }
  for (int k=0; k<op.length; k++) {
    op[k]= new OddballParticle();
  }
}
void draw() {
  int s=second();
  int R=(int)(Math.random()*255);
  int G=(int)(Math.random()*255);
  int B=(int)(Math.random()*255);
  for (int i=0; i<np.length; i++) {
    np[i].show();
    np[i].move();
  }
  for (int j=0; j<jp.length; j++) {
    jp[j].show();
    jp[j].move();
  }
  for (int k=0; k<op.length; k++) {
    op[k].show();
    op[k].move();
     
  }
  if(s%10==0){
    fill(R, G, B);
    rect(0, 0, 600, 600);
  }
  println(s);
}


interface Particle {
  void move();
  void show();
}
