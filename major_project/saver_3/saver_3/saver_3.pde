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
  stroke(255,100);
  ellipse(x,y,rad,rad);
  rain();
  strokeWeight(10);
  stroke(0,100);
  ellipse(x,y,rad,rad);
  
  
  
}
void rain(){
  if (rad >= 20){
    
    x = random(width);
    y = random(height);
    rad+=50;
  }
  if (rad >= 400){
    x = random(width);
    y = random(height);
    rad = 20;
    
  }
}