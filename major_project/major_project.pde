//RED SCREENSAVER - Braedy Borowsky//
//Creates a vibrating fan of lines, looks like a horizon line at a strange angle




//import ani
import de.looksgood.ani.*;
import de.looksgood.ani.easing.*;

//establish two main arrayLists of bouncers - the bouncers reflect off of the diagonal
//line running through the screen from left-right.
ArrayList<hBouncer> thehBouncers = new ArrayList<hBouncer>();
ArrayList<vBouncer> thevBouncers = new ArrayList<vBouncer>();

void setup(){
  noiseSeed(0);
  smooth();
  fullScreen();
  //size(800,600);
  noStroke();
  Ani.init(this);
  for (int i=0; i<30; i++){
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