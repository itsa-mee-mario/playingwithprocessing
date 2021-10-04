PImage img;

void setup(){
  img = loadImage("ts.png");
  img.loadPixels();
size(1000, 1000);
background(0);
frameRate(100);
}
float theta;
float a = 45.0;
void draw(){
  background(0);
stroke(255);
a -= 0.5;
theta = radians(a);
translate(width/2, 2* height/3);

rec(300);
}

void rec(float h){
  h *=0.66;
  if (h > 5) {
    pushMatrix();    
    rotate(theta);  
    //line(0, 0, 0, -h);  
    
    rec(h);       
    popMatrix();     
 
    pushMatrix();
    rotate(-theta);
    line(0, 0, 0, -h);
    translate(0, -h);
    rec(h);
    popMatrix();
   }

}
