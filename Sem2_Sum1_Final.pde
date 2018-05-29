PVector Position;
float speed;
boolean isFired;
PVector Mouse;
PVector Direction;
PVector accel;

PImage start;
PImage space;
PImage ship;
PImage enemy;
PImage enemy2;
PImage Alien;
PImage win;
PImage lose;
PImage space2;
PImage lost;

int x=0;
int x1;
int x2;
int z;

ship ship1 = new ship();
Ball ball1 = new Ball();

int Aliencount= 100;
Alien[] Aliens = new Alien[Aliencount];

import processing.sound.*;
SoundFile file;
String audioName = "BM.mp3";

float r;
float s;
float z1;
float z2;
float z3;
float z4;
float z5;
float z6;
float z7;
float z8;
float ex, ey;

PImage earth;
PImage planet1;
PImage planet2;
PImage planet3;
PImage planet4;

lose l;
ArrayList<lose> loses = new ArrayList<lose>();

void setup()
{
  ball1 = new Ball();
  ship1= new ship();
  size(1200,800,P3D);
  loadimages();
  
  ship1.set();
  

  for(int i=0; i < Aliencount; i++)
  {
    Aliens[i] = new Alien();
  }
  
  file = new SoundFile(this, audioName);
  file.play();
  
  ex = 140;
  ey = 0;
 
 l = new lose();
 
}

void draw()
{
  image(space2,0,0,1200,800);
  scene0();
  scene1();
  scene2();
  
  if(x==0)
  {
  circle();
  planet1();
  planet2();
  planet3();
  planet4();
  planet5();
  planet6();
  planet7();
  planet8();
  }
 
  
}

void circle()
{
  fill(252,216,3);
  pushMatrix();
  //translate moves the origin x,y,z
  translate(600,400,-15);
  //noStroke();
  
  lights();
  
  //you have to decide where you want it to rotate think of it as stabing it and making it rotate.
  //rotateY(r);
  //rotateX(r);
  rotateZ(s);

  sphere(50);
  
  popMatrix();
  
  s+=PI/1000;  
}

void planet1()
{
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(z1));
  fill(0, 255, 100);
  image(planet1,200, 100, 20, 20);
  
  popMatrix();
  z1 += 1;
  
}

void planet2()
{
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(z2));
  fill(0, 255, 100);
  image(planet2,230, 120, 40, 40);
  
  popMatrix();
  z2 += 0.5;
}

void planet3()
{
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(z3));
  fill(0, 255, 100);
  image(planet3,320, 150, 50, 50);
  
  popMatrix();
  z3 += 1.1;
}

void planet4()
{
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(z4));
  fill(0, 255, 100);
  image(planet4,290, 80, 30, 30);
  
  popMatrix();
  z4 += 0.7;
}

void planet5()
{
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(z5));
  fill(0, 255, 100);
  image(planet2,130, 210, 15, 15);
  
  popMatrix();
  z5 += 0.62;
}

void planet6()
{
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(z6));
  fill(0, 255, 100);
  image(planet3,330, 160, 40, 40);
  
  popMatrix();
  z6 += 0.9;
}

void planet7()
{
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(z7));
  fill(0, 255, 100);
  image(planet4,250, 100, 25, 25);
  
  popMatrix();
  z7 += 0.3;
}

void planet8()
{
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(z8));
  fill(0, 255, 100);
  image(planet1,360, ey, 20, 20);
  
  popMatrix();
  z8 += 0.7;
}


void scene0()
{
  
  z=z-2;
  if(x==0)
  {
   PFont f= createFont("Georgina", 63);
    textFont(f);
    textSize(40);
    String a="It is a period of civil wars in the galaxy.";
    String a1="Rebel spaceships, striking from a hidden base";
    String a2="Have won their first victory against";
    String a3="the evil galactic empire.";
    String a4="During the Battle, we have managed in stealing";
    String a5="the enemy base map. It is on you whether earth";
    String a6="win this battle against the aliens.";
    String a7="We would be transporting you to their enemy base.";
    String a8="Therefore, you mission is to capture their";
    String a9="main controler before they notice and capture you.";
    String a10="save earth and the ones you love.";
    text(a,  0, 600+z);
    text(a1, 0, 700+z);
    text(a2, 0, 800+z);
    text(a3, 0, 900+z);
    text(a4, 0, 1100+z);
    text(a5, 0, 1200+z);
    text(a6, 0, 1300+z);
    text(a7, 0, 1500+z);
    text(a8, 0, 1600+z);
    text(a9, 0, 1700+z);
    text(a10,0,1900+z); 
  }
    
    if(z==-1600)
    {
      x=1200;
      
      z=0;
    }
  
}

void scene1()
{
  image(start,1200-x,0,1200,800);
}

void scene2()
{
  if(x1==1200)
 {
   z1=z1-1;
   if(z1<-1600)
   {
     image(lose,1200-x1,0,1200,800);
   }
 }
 
  image(space,1200-x1,0,1200,800);

  if(x1==1200)
  {
ship1.Render();
ball1.Render();
ball1.Move();
ship1.dir();
ship1.move();
  }

if(x==1200)
 {
  for(int i=0; i < Aliencount; i++)
  {
    Aliens[i].Fall();
    Aliens[i].move();
  }
 }

 PFont f= createFont("Georgina", 63);
    textFont(f);
    textSize(40);
    String b="Man: Boss I cannot capture the Alien...";
    String b1="Sorry commander we have lied to you.";
    String b2="Man: What, but for what purpose?";
    String b3="We needed a sacrifice in order to keep peace with";
    String b4="the aliens, and you were selected. I am sorry commander";
    String b5="Man: I understand Boss, I will become the sacrifice for";
    String b6="earth and save everyone.";
    text(b,  0, 900+z1);
    text(b1,  0, 1100+z1);
    text(b2,  0, 1300+z1);
    text(b3,  0, 1500+z1);
    text(b4,  0, 1600+z1);
    text(b5,  0, 1800+z1);
    text(b6,  0, 1900+z1);
    
    if(z1<-1600)
    {
      image(lose,0,0,1200,800);
      
  l.update();
  
    loses.add(new lose(250, -20));
    loses.add(new lose(500, -20));
    loses.add(new lose(750, -20));
    loses.add(new lose(1000, -20));
    loses.add(new lose(1250, -20));
    
  
  for(int i = loses.size()-1; i >= 0; i--)
  {
    //particles[i] does not work with array list
    loses.get(i).update();
    
    if(loses.get(i).position.y > height)
    {
      loses.remove(i);
    }
  }
    }

}

void loadimages()
{
  lose=loadImage("lose.png");
  start=loadImage("start.png");
  ship=loadImage("ship.gif");
  space=loadImage("space.jpg");
  enemy=loadImage("enemy.png");
  Alien=loadImage("ALien.png");
  win=loadImage("win.png");
  space2=loadImage("space2.jpg");
 
  earth=loadImage("earth.png");
  planet1=loadImage("planet1.png");
  planet2=loadImage("planet2.png");
  planet3=loadImage("planet3.png");
  planet4=loadImage("planet4.png");
  lost=loadImage("lost.png");
}



void mousePressed()
{
  if(x==1200)
  {
x1=1200;
  }
}