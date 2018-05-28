class Alien
{
 float speed;
 
  float x;
  float y;
  color col;
  float yspeed;
  float xspeed;
  float size;
  PVector Position;
  
   
 
  Alien()
  {
    y=50;
    xspeed=20;
    yspeed=20;
    size=0;
    x=random(-100,1200);
    y=random(0,1600);
    speed = random(2,5);
    col = color(242,215,76);

  }
  
  void Fall()
  {
    y += speed;
    x-=random(2);
    if(x < 10)
    {
      x=1200;
    }
    if(y > 780)
    {
      y = 0;
    }
    
  }
  
  void move()
  {
image(Alien,x,y,20,20);
  }
  
}