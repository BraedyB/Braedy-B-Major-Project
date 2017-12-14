import de.looksgood.ani.*;
import de.looksgood.ani.easing.*;



ArrayList<Ball> theBalls = new ArrayList<Ball>();
b1 = new Ball();


void setup(){
  size(800,600);
  noStroke();
  Ani.init(this);
  for (int i=0; i<5; i++){
    
    theBalls.add(new Ball());
    
  }
  
  
}

void draw(){
  background(0);
  
  ellipseMode(CENTER);
  fill(255);
  b1.move();
  
  
  
}

//void mousePressed(){
//  Ani.to(this,2,"x", width, Ani.CUBIC_IN);
//  if (x == width){
//    Ani.to(this,2,"x",0,Ani.CUBIC_IN);
//  }
//}