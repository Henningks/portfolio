NormalParticle[] np= new NormalParticle[100];
JumboParticle[] jp= new JumboParticle[5];
OddballParticle[] op= new OddballParticle[5];

void setup() {
  size(600, 600);
  for (int i=0; i<np.length; i++) {
    for (int j=0; j<jp.length; j++) {
      for (int k=0; k<op.length; k++) {
        np[i]= new NormalParticle();
        jp[j]= new JumboParticle();
        op[k]= new OddballParticle();
      }
    }
  }
}
void draw() {
  background(0);
  for (int i=0; i<np.length; i++) {
    for (int j=0; j<jp.length; j++) {
      for (int k=0; k<op.length; k++) {
        np[i].show();
        np[i].move();
        jp[j].show();
        jp[j].move();
        op[k].show();
        op[k].move();
      }
    }
  }
}


interface Particle {
  void move();
  void show();
}
