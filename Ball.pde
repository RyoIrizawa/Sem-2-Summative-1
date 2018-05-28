class Ball 
{
  //define the data of the class
  //pete pan;
  //PImage img;
  float X;
  float Y;
  float speed;
  float XDir;
  float YDir;
  
  //default constuctor sets DEFUALT values up. Sometimes Random.
  Ball()
  {
    X=400;
    Y=400;
    speed=10;
    XDir= random(-2,2);
    YDir= random(-2,2);
  }
  
  
  //draws an ellipse at ball position
  void Render()
{
  if(x1==1200)
  {
  image(enemy,X,Y,50,50);
  }
}

//give the ability for ball to move
void Move()
{
 X += XDir*12;
Y += YDir*12;
  
  if(X>width || X<0)
  {
    XDir *=-1;
  }
  
  if(Y>height || Y<0)
  {
    YDir *=-1;
  }
}

  

}