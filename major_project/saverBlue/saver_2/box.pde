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
  translate(-10+dist,50);
  dist+= 10;
  stroke(175,255,175);
  rotateX(rot);
  //rotateY(rot);
  rotateZ(rot);
  boxZ -= scale;
  boxX -= scale;
  boxY -= scale;
  box(boxX,boxY,boxZ);
  
  
  if (boxX == -100){
    scale --;
    
  }else if (boxX == +100){
    scale ++;
    
  }
    for(int j = 0; j<width; j++){
    rot += (0.00001);
  }
  
}
}