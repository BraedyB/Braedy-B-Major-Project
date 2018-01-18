//GREEN SCREENSAVER - Braedy Borowsky//
//Spawns green radar pings at a random x,y coord - only starts a new ping once the 
//radius of the circle > the screen's width*2

//Quite simple - but some refinement was made in order to create some more visual
//interest.





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
  
  //alpha-shader background - present in all screensavers except for saverRed
  noStroke();
  fill(0,25);
  rectMode(1);
  rect(0,0,width,height);
  
//draws the primary circle, then a lighter one in order to create some visual 
//contrast
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
  //starts the circle's radius at 0 - increase by (speed) every iteration
  if (rad >= 0){
    rad+= speed;
    
  }
  
//resets the circle's radius once its radius is greater than the screen width*2 
//and sets it to a random coord again.
  if (rad >= width*2){
   

    x = random(width);
    y = random(height);
    rad = 0;
  }
}