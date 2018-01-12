float x,y;
float rad;
int weight;

void setup(){
  background(0);
  fullScreen();
  rad = 20;
  
}

void draw(){
  rain();
  noFill();
  stroke(255);
  ellipse(x,y,rad,rad);
  
  
}
void rain(){
  if (rad >= 20){
    
    x = random(width);
    y = random(height);
    rad+=5;
    weight -=0.05;
  }
  if (rad >= 400){
    x = random(width);
    y = random(height);
    rad = 20;
    
  }
}