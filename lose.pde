class lose
{
  PVector position;
  PVector direction;

  lose()
  {
    position= new PVector(width/2,height/2);
    direction= new PVector(4,0);
    
  }
  
  lose(float _nX, float _nY)
  {
    position = new PVector(_nX, _nY);
    direction = new PVector(random(-5,5),random(-8,3));
  }
  
  
  void update()
  {
    position.add(direction);
    direction.add(new PVector(0,0.2));
    image(lost,position.x,position.y,30,30);
  }
  
}