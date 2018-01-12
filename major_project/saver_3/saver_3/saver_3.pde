float x,y;
float rad;
float opac;

void setup(){
  background(0);
  fullScreen();
  rad = 20;
  
  
}

void draw(){
  rain();
  noFill();
  stroke(255,100);
  ellipse(x,y,rad,rad);
  
  
}
void rain(){
  if (rad >= 20){
    
    x = random(width);
    y = random(height);
    rad+=5;
  }
  if (rad >= 400){
    x = random(width);
    y = random(height);
    rad = 20;
    
  }
}