class Bouncer{
  float x,y,rad,aniSpeed,opac;

  Bouncer(){
    opac = random(100);
    x = 0;
    y = height/2;
    rad = height/8;
    opac = 100;
  }
  void move(){
    fill(255,opac);
    aniSpeed = random(1,2);

    rect(x,y,rad,rad);
    
    if (x == 0){
      Ani.to(this,aniSpeed,"x",width, Ani.CUBIC_OUT);
    }else if (x == width){
      Ani.to(this,aniSpeed,"x",0, Ani.CUBIC_OUT);
    }
  }
  

}
  
  
  
  
  
  
  
  
  
  