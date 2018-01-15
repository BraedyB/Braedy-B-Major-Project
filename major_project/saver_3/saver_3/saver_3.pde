float x,y;
float rad;
float opac;

void setup(){
  smooth();
  background(0,0,0);
  fullScreen();
  rad = 20;
  
  
}

void draw(){
  rain();
  strokeWeight(10);
  noFill();
  stroke(255);
  ellipse(x,y,rad,rad);
  rain();
  strokeWeight(10);
  stroke(0);
  ellipse(x,y,rad,rad);
  
  
  
}
void rain(){
  if (rad >= 20){
    
    x = noise(width);
    y = noise(height);
    rad+=50;
  }
  if (rad >= 1000){
    x = noise(width);
    y = noise(height);
    rad = 20;
    
  }
}