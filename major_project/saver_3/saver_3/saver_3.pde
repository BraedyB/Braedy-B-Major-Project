//globals
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
  
  //alpha fading background - this is why the circles appear to fade out.
  noStroke();
  fill(0,10);
  rect(0,0,width,height);
  //
  
  
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
  //starts the circle's radius at 20 - increase by 25 every iteration, then place the
  //larger circle in a new random coord.
  if (rad >= 20){
    
    x = random(0,width);
    y = random(0,height);
    rad+=25;
    
  }
  if (rad >= 400){
    //resets the circle's radius once its radius is greater than 400 and sets it to a
    //random coord again.
    x = random(0,width);
    y = random(0,height);
    rad = 20;
    
  }
}