float dist;


void setup(){
 background(0);
 fullScreen(P3D); 
  for (int i = 0; i<10; ++i){
    theBoxes.add(new Box());
    
    
  }
}
  
  
void draw(){
  stroke(0);
  fill(0,10);
  rect(0,0,width,height);
  
  for(Box thisBox: theBoxes){  
    thisBox.bounceKinda();
  }


}