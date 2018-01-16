class vBouncer{
  float x,y,rad,aniSpeed,opac;

  vBouncer(){
    opac = (100);
    x = 0;
    y = 0;
    rad = height/8;
    opac = 100;
  }
  void move(){
    noise(3,0.8);
    stroke(color(255,55,55),opac);
    aniSpeed = noise(2.0);
    
    line(x,y,width,height);
    
    if (y == 0){
      Ani.to(this,aniSpeed,"y",height, Ani.CUBIC_IN);
    }else if (y == height){
      Ani.to(this,aniSpeed,"y",0, Ani.CUBIC_IN);
    }
  }
  

}