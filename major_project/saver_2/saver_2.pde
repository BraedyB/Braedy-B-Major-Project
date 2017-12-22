float rot = 0.3;
float boxX,boxY,boxZ;
void setup(){

  fullScreen(P3D);
    

}

void draw(){
  
  boxX = 100;
  boxY = 100;
  boxZ = 100;
  translate(width/2,height/2,0);
  background(255);
  fill(255,0,0);
  stroke(0);
  rotateX(rot);
  rotateY(rot);
  rotateZ(rot);
  box (boxX,boxY,boxZ);
 
  

  
  
    
  
 
 

  
  //if(frameCount%60 ==0){
    for(int i = 0; i<width; i++){
    rot += (0.00001);
  }
  //}
}