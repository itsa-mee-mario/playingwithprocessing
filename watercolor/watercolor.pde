ArrayList<PVector> rpoly(float x, float y, float r, int nsides) {
  ArrayList<PVector> points = new ArrayList<PVector>();
  float sx, sy;
  float angle = TWO_PI / nsides;
  for (float a =0; a<TWO_PI; a+= angle){
    sx += x+cos(a)*r;
    sy = y+ sin(a)*r;
    points.add(new PVector(sx, sy) );
  }
  return points;
}

void setup(){}

void draw(){}
