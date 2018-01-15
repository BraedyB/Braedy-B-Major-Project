class vBouncer{
  float x,y,rad,aniSpeed,opac;

  vBouncer(){
    opac = (100);
    x = width/2;
    y = 0;
    rad = height/8;
    opac = 100;
  }
  void move(){
    fill(color(255,55,55),opac);
    aniSpeed = noise(1,5);
    
    rect(x,y,width,rad/4);
    
    if (y == 0){
      Ani.to(this,aniSpeed,"y",height, Ani.CUBIC_IN);
    }else if (y == height){
      Ani.to(this,aniSpeed,"y",0, Ani.CUBIC_IN);
    }
  }
  

}