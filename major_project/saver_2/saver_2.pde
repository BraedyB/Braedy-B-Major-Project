Box b1;

float boxX,boxY,boxZ = 100;
float rot = 0.3;
float scale = 0.5;





void setup(){
 fullScreen(P3D); 
 b1 = new Box(boxX,boxY,boxZ,rot,scale);
}

void draw(){
  b1.bounceKinda();
  b1.display();


}