class ship
{
  
PVector Position;
float speed;
boolean isFired;
PVector Mouse;
PVector Direction;
PVector accel;



ship()
{
speed = 3;
isFired = false;
Mouse = new PVector(mouseX,mouseY);
Direction = new PVector(0,0);
accel = new PVector(0,0);
}

void set()
{
  Position = new PVector(550,650);
}

void Render()
{
  if(x1==1200)
  {
  image(ship,Position.x, Position.y,100,100);

  if(isFired)
  {    
    Position.add(Direction);
  }
  }
}

void move()
{
isFired = true;
  Mouse = new PVector(mouseX,mouseY);
  
  Direction = new PVector(Mouse.x - Position.x,Mouse.y - Position.y);
  
  Direction.normalize();
  Direction.mult(speed);
    
}

void dir()
{
  if(Position.x>1180||Position.x<20)
  {
    Position.x = Position.x * -1;
  }
  
  if(Position.y>780||Position.y<20)
  {
    Position.y = Position.y * -1;
  }
}



}