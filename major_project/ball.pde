class hBouncer{
  float x,y,rad,aniSpeed,opac;

  hBouncer(){
    opac = (100);
    x = 0;
    y = height/2;
    rad = height/8;
    opac = 100;
  }

  void move(){
    noiseDetail(2,0.8);
    fill(color(255,0,0),opac);
    aniSpeed = noise(2.0);

    rect(x,y,rad/4,height);
    
    if (x == 0){
      Ani.to(this,aniSpeed,"x",width, Ani.CUBIC_IN);
    }else if (x == width){
      Ani.to(this,aniSpeed,"x",0, Ani.CUBIC_IN);
    }
  }
  

}
  
  
  
  
  
  
  
  
  
  