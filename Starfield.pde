Particle[] pop = new Particle[2200];
void setup()
{
 size(500,500);
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

  {
    background(0);
  }
  for(int i = 0; i <pop.length; i++)
  {
    pop[i].move();
    pop[i].show();
   
  }
}
void mousePressed()
{
 if(mouseButton == LEFT)
  {
    for(int i = 0; i < pop.length; i++)
    {
      pop[i].mySpeed*=-1;
    }
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
     if(myX > 600 || myX < -100 || myY > 600 ||myY < -100  )
    {
      myX = 250;
      myY = 250;
    }

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
    myY = myY +(int)(Math.random()*mySpeed)-3;
    myX = myX +(int)(Math.random()*mySpeed)-3;
 }
 void show()
  {
    fill(0,myColor,0);
    ellipse((float)myX,(float)myY,25,25);
  }
}
