float boxX,boxY,boxZ;
float rot;
float scale;

ArrayList<Box> theBoxes = new ArrayList<Box>();

void setup(){
 fullScreen(P3D); 
 background(255);
 theBoxes.add(new Box());
}

void draw(){
  thisBox.display;
  thisBox.bounceKinda;
}