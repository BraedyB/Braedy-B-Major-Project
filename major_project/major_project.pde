import de.looksgood.ani.*;
import de.looksgood.ani.easing.*;
float x = width/2;
float y = height/2;
float rad = height/6;




void setup(){
  size(800,600);
  noStroke();
  Ani.init(this);
  
  
}

void draw(){
  background(0);
  fill(255);
  ellipseMode(CENTER);
  ellipse(x,y,rad,rad);
  
  
}

//void mousePressed(){
//  Ani.to(this,2,"x", width-rad, Ani.CUBIC_IN);
//  Ani.to(this,2,"y", height-rad, Ani.CUBIC_IN);
//}
//void mouseReleased(){
//  Ani.to(this,2,"x", 0, Ani.CUBIC_OUT);
//  Ani.to(this,2,"y", 0, Ani.CUBIC_IN);
//  if (x == 0 && y == 0){
//    Ani.to(this,2,"x",width,Ani.CUBIC_IN_OUT);  
//    Ani.to(this,2,"y",height,Ani.CUBIC_OUT);
//  }
//}