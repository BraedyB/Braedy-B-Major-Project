class Ball{
  float x,y,rad,aniSpeed;

  Ball(){
    x = 0;
    y = 0;
    rad = height/6;
    aniSpeed = random(1,27);
  }
  void move(){
    ellipse(x,y,rad,rad);
    if (x == 0){
      Ani.to(this,aniSpeed,"x",width, Ani.CUBIC_IN);
    }else if (x == width){
      Ani.to(this,aniSpeed,"x",0, Ani.CUBIC_IN);
    }
  }
  

}
  
  
  
  
  
  
  
  
  
  