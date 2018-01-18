class hBouncer{
  float x,y,rad,aniSpeed,opac;

  hBouncer(){
    opac = (100);
    x = 0;
    y = 0;
    rad = height/8;
    opac = 100;
  }

  void move(){
    //using noise instead of random creates a more stable & consitent effect
    noise(3,0.8);
    stroke(color(255,0,0),opac);
    aniSpeed = noise(2.0);

    line(x,y,width,height);
    
    //Ani movement(s)
    if (x == 0){
      Ani.to(this,aniSpeed,"x",width, Ani.CUBIC_IN);
    }else if (x == width){
      Ani.to(this,aniSpeed,"x",0, Ani.CUBIC_IN);
    }
  }
  

}
  
  
  
  
  
  
  
  
  
  