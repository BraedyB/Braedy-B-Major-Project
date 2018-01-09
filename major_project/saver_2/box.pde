class Box {
  //data 
  float rot = 0.3;
  float boxX,boxY,boxZ;
  float scale = 0.5;
  float slide = width/6;
  
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
  translate((slide),height/2,0);
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
    for(int j = 0; j<width; j++){
    rot += (0.00001);
  }
  
}
}