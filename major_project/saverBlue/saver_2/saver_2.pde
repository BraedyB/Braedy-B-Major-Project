//BLUE SCREENSAVER - Braedy Borowsky//
//Wipes the black background with a rolling wave of rotating cubes - each frame 
//of the rotation is pasted ahead of the most recent with a random y coord.

//WEIRD OBSERVATION - I'm quite certain that the boxes are "rotating" around eachother
//this creates a strange sense of movement, as well as several instances where 
//specific boxes appear much larger than that of others.


//The lonely global
float dist;


void setup(){
 background(0);
 fullScreen(P3D); 
 //Creating the starting (10) box(es) - the actual arrayList is inside the Box class
  for (int i = 0; i<10; ++i){
    theBoxes.add(new Box());
    
    
  }
}
  
  
void draw(){
  
  //alpha-shader background - present in all screensavers except for saverRed
  stroke(0);
  fill(0,10);
  rect(0,0,width,height);
  
  //puts the box through its movement cycle
  for(Box thisBox: theBoxes){  
    thisBox.bounceKinda();
    
  }


}