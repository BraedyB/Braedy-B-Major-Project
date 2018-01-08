class Box {
  //data 
  float rot = 0.3;
  float boxX,boxY,boxZ;
  float scale = 0.5;
  
Box(float boxX, float boxY, float boxZ, float rot, float scale){
  this.boxX = boxX;
  this.boxY = boxY;
  this.boxZ = boxZ;
  this.scale = scale;
  this.rot = rot;
}
  
void display(){
  fill(255,0,0);
  box (boxX,boxY,boxZ);
}


void bounceKinda(){
  boxX = 100;
  boxY = 100;
  boxZ = 100;
  translate(width/2,height/2,0);
  background(255);
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
  
 
  

  
  
    
  
 
 

  
  //if(frameCount%60 ==0){
    for(int i = 0; i<width; i++){
    rot += (0.00001);
  }
  //}
}
}