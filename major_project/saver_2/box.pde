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
  fill(255,0,0);
  translate(width/2,height/2);
  stroke(0);
  rotateX(rot);
  //rotateY(rot);
  rotateZ(rot);
  boxZ -= scale;
  boxX -= scale;
  boxY -= scale;
  
  
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