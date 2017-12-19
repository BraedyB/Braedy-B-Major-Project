
import de.looksgood.ani.*;
import de.looksgood.ani.easing.*;


ArrayList<hBouncer> thehBouncers = new ArrayList<hBouncer>();
ArrayList<vBouncer> thevBouncers = new ArrayList<vBouncer>();

void setup(){
  fullScreen();
  //size(800,600);
  noStroke();
  Ani.init(this);
  for (int i=0; i<6; i++){
    thevBouncers.add(new vBouncer());
    thehBouncers.add(new hBouncer());
    
    
    
  }
  
  
}

void draw(){
  background(0);
  
  rectMode(CENTER);
  for (hBouncer thishBouncer: thehBouncers){
    thishBouncer.move();
    
  }
  for (vBouncer thisvBouncer: thevBouncers){
    thisvBouncer.move();
  }
  
}

//void mousePressed(){
//  Ani.to(this,2,"x", width, Ani.CUBIC_IN);
//  if (x == width){
//    Ani.to(this,2,"x",0,Ani.CUBIC_IN);
//  }
//}