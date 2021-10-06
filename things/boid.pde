
//color c;= loadImage("ts.png");
class Boid {



  float xp, sx, yp, sy;
  color c;
  Boid(int xo, int yo, float dx, float dy, color ic) {

    c = ic;
    xp = xo;
    yp = yo;
    sx = dx;
    sy = dy;
  }

  void update() {
    float x_o = xp;
    float y_o = yp;
    xp += random(-3, 3);
    yp += random(-3, 3);
    strokeWeight(50);
    stroke(c, 5);
    
    line(x_o, y_o, xp, yp);
  }
}
