
ArrayList<Box> theBoxes = new ArrayList<Box>();


void setup(){
 fullScreen(P3D); 
  for (int i = 0; i<1; i++){
    theBoxes.add(new Box());
  }
}

void draw(){
  fill(0,10);
  rect(0,0,width,height);
  
  for(Box thisBox: theBoxes){
    thisBox.bounceKinda();
  }


}