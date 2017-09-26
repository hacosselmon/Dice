void setup()
{
  size(500, 500);
  textAlign(CENTER);
  noLoop();
}
void draw()
{
  background(0);
  fill(255);
  int totalDots = 0;
  for (int y = 40; y <= 450; y += 75)
  {
    for (int x = 40; x <= 450; x += 75)
    {
      Die one = new Die(x, y);
      one.roll();
      one.show();
      if (one.numDots == 1)
      totalDots = totalDots +1;
      if (one.numDots == 2)
      totalDots = totalDots + 2;
      if (one.numDots == 3)
      totalDots = totalDots + 3;
      if (one.numDots == 4)
      totalDots = totalDots + 4;
      if (one.numDots == 5)
      totalDots = totalDots+5;
      else 
      totalDots = totalDots+6;
    }
   noLoop();
  }
  System.out.println(totalDots);
  fill(255, 255, 255);
  strokeWeight(2);
  text("TOTAL:",250,15);
  text(totalDots,250,25);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int numDots;
  int myX, myY;
  Die(int x, int y)
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    if ((int)(Math.random()*6) == 0)
      numDots = 1;
    if ((int)(Math.random()*6) == 1)
      numDots = 2;
    if ((int)(Math.random()*6) == 2)
      numDots = 3;
    if ((int)(Math.random()*6) == 3)
      numDots = 4;
    if ((int)(Math.random()*6) == 4)
      numDots = 5;
    if ((int)(Math.random()*6) == 5) 
      numDots = 6;
  }
  void show()
  {
    stroke(255);
    fill(255);
    rect(myX, myY, 40, 40);
    fill(0);
    stroke(0);
    if (numDots == 1)
      ellipse (myX+20, myY+20, 5, 5);
    else if (numDots == 2)
    {
      ellipse(myX+13, myY+20, 5, 5);
      ellipse(myX+27, myY+20, 5, 5);
    } else if (numDots == 3)
    {
      ellipse(myX+10, myY+20, 5, 5);
      ellipse(myX+20, myY+20, 5, 5);
      ellipse(myX+30, myY+20, 5, 5);
    } else if (numDots == 4)
    {
      ellipse(myX+13, myY+13, 5, 5);
      ellipse(myX+13, myY+27, 5, 5);
      ellipse(myX+27, myY+13, 5, 5);
      ellipse(myX+27, myY+27, 5, 5);
    } else if (numDots == 5)
    {
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+10, myY+30, 5, 5);
      ellipse(myX+30, myY+10, 5, 5);
      ellipse(myX+30, myY+30, 5, 5);
      ellipse(myX+20, myY+20, 5, 5);
    } else
    {
      ellipse(myX+13, myY+10, 5, 5);
      ellipse(myX+13, myY+20, 5, 5);
      ellipse(myX+13, myY+30, 5, 5);
      ellipse(myX+27, myY+10, 5, 5);
      ellipse(myX+27, myY+20, 5, 5);
      ellipse(myX+27, myY+30, 5, 5);
    }
  }
}