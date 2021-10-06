PImage img;
ArrayList<Boid> boids;

void setup(){
  
boids = new ArrayList<Boid>();

size(800,800);
img = loadImage("flower.jpg");
background(255);

  for(int i=0;i<img.width;i+=random(50)){
    for(int j=0;j<img.height;j+=random(50)){
      color c = img.get(i, j);
      boids.add(new Boid(i, j, 1, 1, c));
    }
  }

}

void draw(){
for (int i = boids.size()-1; i >= 0; i--) { 
    Boid boid = boids.get(i);
    boid.update();
}

}
