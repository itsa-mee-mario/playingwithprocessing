PImage img, brain;

public void setup(){
 size(900, 900, P3D);
  
img = loadImage("millie.jpeg");
brain = loadImage("brain.png");
brain.resize(900,900); 
img.resize(900,900);
smooth(2);

}


void draw(){
 
  fill(0);
  noStroke();



float tiles = 10;
float  tileSize = width/tiles;


push();

translate(width/2, height/2);

rotate(radians(frameCount));


for(int x=0; x<tiles; x+=1){
  for(int y=0; y<tiles; y+=1){
    color c = img.get(int(x*tileSize), int(y*tileSize));
    float b = map(brightness(c), 0, 255, 1, 0);
    fill(brightness(c));
    push();
    translate(x*tileSize- width/2, y*tileSize- height/2);
    ellipse(0, 0, tileSize*b, tileSize*b);
    stroke(c);
    strokeWeight(b);
     line(x*tileSize- width/2, y*tileSize- height/2, 0, 0);
     
    pop();
    
  }
}

pop();
   

}
