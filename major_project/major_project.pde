import de.looksgood.ani.*;
import de.looksgood.ani.easing.*;


ArrayList<Bouncer> theBouncers = new ArrayList<Bouncer>();
//ArrayList<ArrayList<theBouncers>> theLists = new ArrayList<ArrayList


void setup(){
  size(800,600);
  noStroke();
  Ani.init(this);
  for (int i=0; i<30; i++){
    
    theBouncers.add(new Bouncer());
    
    
    
  }
  
  
}

void draw(){
  background(0);
  
  rectMode(CENTER);
  for (Bouncer thisBouncer: theBouncers){
    thisBouncer.move();
  }
  
  
  
}

//void mousePressed(){
//  Ani.to(this,2,"x", width, Ani.CUBIC_IN);
//  if (x == width){
//    Ani.to(this,2,"x",0,Ani.CUBIC_IN);
//  }
//}