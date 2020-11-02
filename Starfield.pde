Particle[] pop = new Particle[2200];
void setup()
{
 size(500,500);
  smooth();
  noStroke();
  background(255);
 for(int i = 0; i <pop.length; i++)
  {
    pop[i] = new Particle();
    pop[0] = new OddballParticle();
  }
}
void draw()
{
  background(20,20,20);
  for(int i = 0; i <pop.length; i++)
  {
    pop[i].move();
    pop[i].show();
   
  }
}

class Particle
{
  double myX,myY,myAngle,mySpeed;
  int myColor;
  Particle()
  {
    myX = 250;
    myY = 250;
    myAngle = (Math.random()*2*Math.PI);
    mySpeed = (Math.random()*10);
    myColor = (int)(Math.random()*76)+180;
  }
  void move()
  {
    myX=myX+Math.cos(myAngle)*mySpeed;
    myY=myY+Math.sin(myAngle)*mySpeed;

  }
  void show()
  {
    fill(myColor,0,0);
    ellipse((float)myX,(float)myY,5,5);
  }
}

class OddballParticle extends Particle
{
 OddballParticle()
 {
    myX = 250;
    myY = 250;
    mySpeed = (Math.random()*10);
    myColor = (int)(Math.random()*76)+180;
 }
 void move()
 {
    myY = myY +(int)(Math.random()*6)-3;
    myX = myX +(int)(Math.random()*6)-3;
 }
 void show()
  {
    fill(0,myColor,0);
    ellipse((float)myX,(float)myY,25,25);
  }
}
