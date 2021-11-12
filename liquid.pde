
final int N = 500;
final int iter = 1;
final int SCALE = 1;
float t = 0;
PImage img1;



Fluid fluid;

void settings() {
  size(N*SCALE, N*SCALE);
}

void setup() {
  img1 = loadImage("flower.jpg");
  fluid = new Fluid(0.2, 0, 0.000000001);
   background(255, 255, 255);
}

//void mouseDragged() {
//}

void draw() {
 saveFrame(); 
  int cx = int(0.5*width/SCALE);
  int cy = int(0.5*height/SCALE);
  for (int i = -1; i <= 1; i++) {
    for (int j = -1; j <= 1; j++) {
      fluid.addDensity(cx+i, cy+j, random(50, 150));
    }
  }
  for (int i = 0; i < 2; i++) {
    float angle = noise(t) * TWO_PI * 2;
    PVector v = PVector.fromAngle(angle);
    v.mult(0.2);
    t += 0.01;
    fluid.addVelocity(cx, cy, v.x, v.y );
  }


  fluid.step();
  fluid.renderD();
  //fluid.renderV();
  //fluid.fadeD();
}
