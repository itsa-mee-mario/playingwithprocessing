PImage img;
void setup() {
  size(640, 360, P3D);
  noStroke();
  fill(204);
  img = loadImage("ts.png");
  print("loaded image");
 frameRate(2);
}

void draw() {
  background(0); 
  

    img.loadPixels();
  for (int i =0; i<img.height; i=i+20){
    for (int j =0; j<img.width; j = j+20){
     color pix = img.get(i, j);
     fill(pix);
     circle(i, j, random(20,35));

  //// Moving spotlight that follows the mouse
  //spotLight(red(pix), green(pix), blue(pix) , 360, mouseY, 600, 0, 0, -1, PI/2, 600);

 
    }
  }
}
