//globals
float x,y;
float rad;
float opac;
float sWeight;
float pointX, pointY;
float speed;

void setup(){
  smooth();
  background(0);
  fullScreen();
  rad = 0;
  sWeight = 3;
  speed = 3;
  x = width/2;
  y = height/2;
  
  
  
}

void draw(){
  
  //alpha shading background - this is why the circles appear to fade out.
  noStroke();
  fill(0,25);
  rectMode(1);
  rect(0,0,width,height);
  //
  
  
  rain();
  strokeWeight(sWeight);
  noFill();
  stroke(175,255,175,255);
  ellipse(x,y,rad,rad);
  rain();
  strokeWeight(sWeight);
  stroke(0,175,0,255);
  ellipse(x,y,rad,rad);

  
}
void rain(){
  //starts the circle's radius at 20 - increase by 25 every iteration, then place the
  //larger circle in a new random coord.
  if (rad >= 0){
    rad+= speed;
    
  }
  if (rad >= width*2){
    //resets the circle's radius once its radius is greater than 400 and sets it to a
    //random coord again.
    x = random(width);
    y = random(height);
    rad = 0;
  }
}