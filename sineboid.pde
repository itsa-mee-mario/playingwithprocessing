ArrayList<ball>  balls;
PImage img;

void setup(){
size(2000,1000);
img = loadImage("photo.jpg");
 balls = new ArrayList<ball>();
 for(float i = 0; i<width; i+=75){
    balls.add(new ball(i, 400));
    balls.add(new ball(i, 500));
    balls.add(new ball(i, 600));
    
   }
  
}

void draw(){
  background(0);
 for (int i = balls.size()-1; i >= 0; i--) { 
 ball currentball = balls.get(i);
  currentball.move();
 currentball.display();
 }
    
}
