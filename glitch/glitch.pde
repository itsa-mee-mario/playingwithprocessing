PImage img;

void setup() {
  size(650,650);
  img = loadImage("ts.png");
  print("loaded image");
  delay(10);
}

void draw() {
 
 frameRate(10);
  float y = random(0, 40);
  float x = random(0, height);
  img.loadPixels();
  for (int i =0; i<img.height; i=i+ int(random(10,40))){
    for (int j =0; j<img.width; j = j+int(random(10,40))){

      fill(img.get(i,j), random(128));
      noStroke();
      rect(i, j, x,y);
    }
  }
  
}
