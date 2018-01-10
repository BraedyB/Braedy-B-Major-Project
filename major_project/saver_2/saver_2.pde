Box b1;

float boxX = 100;
float boxY = 100;
float boxZ = 100;
float rot = 0.3;
float scale = 0.5;



void setup(){
 fullScreen(P3D); 
 b1 = new Box(boxX,boxY,boxZ,rot,scale);
 b2 = new Box(boxX+100,boxY,boxZ,rot,scale);

}

void draw(){
  b1.bounceKinda();
  b1.display();
  b2.bounceKinda();
  b2.display();


}