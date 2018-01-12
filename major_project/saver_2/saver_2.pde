
ArrayList<Box> theBoxes = new ArrayList<Box>();


void setup(){
 fullScreen(P3D); 
  for (int i = 0; i<1; i++){
    theBoxes.add(new Box());
  }
}

void draw(){
  background(255);
  for(Box thisBox: theBoxes){
    thisBox.bounceKinda();
  }


}