float x,y;
float rad;
float opac;
float sWeight;

void setup(){
  smooth();
  background(0,0,0);
  fullScreen();
  rad = 20;
  sWeight = 10;
  
  
}

void draw(){
  noStroke();
  fill(0,10);
  rect(0,0,width,height);
  rain();
  strokeWeight(sWeight);
  noFill();
  stroke(255,100);
  ellipse(x,y,rad,rad);
  rain();
  strokeWeight(sWeight);
  stroke(0,175,0,100);
  ellipse(x,y,rad,rad);
  
  
  
}
void rain(){
  if (rad >= 20){
    
    x = random(width);
    y = random(height);
    sWeight -= 0.5;
    rad+=50;
    
  }
  if (rad >= 400){
    x = random(width);
    y = random(height);
    sWeight = 10;
    rad = 20;
    
  }
}