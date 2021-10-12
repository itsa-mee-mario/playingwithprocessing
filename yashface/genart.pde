

PImage img;

void setup() {
  img = loadImage("ts.png");
  size(1000, 1000);
  background(0);



}
int i = 0; 
int j = 0;
void draw() {
  translate(10, 10);
  for( int x=0; x<img.width; x+=40){
  for( int y=0; y<img.width; y+=40){
    color c = img.get(i+x,j+y);
    fill(red(c), green(c), blue(c));
    noStroke();
  circle(x+i, y+j, random(20));}}
  
  i+=10;
  j+=10;
}


  
 
  
