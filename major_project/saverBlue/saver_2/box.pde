float initial = -10;
ArrayList<Box> theBoxes = new ArrayList<Box>();

class Box {
  //data 
  float boxX,boxY,boxZ,rot,scale;

Box(){
   boxX = 100;
   boxY = 100;
   boxZ = 100;
   rot = 0.3;
   scale = 0.5;
}



void bounceKinda(){
  fill(0,0,255);
  translate(initial+dist,random(height));
  dist+= 5;
  stroke(175,255,175);
  rotateX(rot);
  //rotateY(rot);
  rotateZ(rot);
  boxZ -= scale;
  boxX -= scale;
  boxY -= scale;
  box(boxX,boxY,boxZ);
  
   if (dist >= width){
    initial = -10;
    dist = 0;
  }
  
  if (boxX == -150){
    scale --;
    
  }else if (boxX == +150){
    scale ++;
    
  }
    for(int j = 0; j<width; j++){
    rot += (0.00001);
  }
  if (initial >= width){
    initial = -10;
  }
}
}