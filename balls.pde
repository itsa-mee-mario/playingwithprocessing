
class ball{
  float y, x, theta, t;
  color c;
  
  
  
  ball(float a, float b){
    x = a;
    t = b;
    theta = x;
    //y = 400+ 50*sin(10000*a);
 
    
  }
  


void move(){
    theta += PI/500;
    y = t+ 100*sin(theta);
    display();
}

void display(){
   int m = int(random(5));
    c = img.get(int(x),int(y));

 
  fill(c, 70);
  noStroke();
  circle(x, y, 150);





}

}
