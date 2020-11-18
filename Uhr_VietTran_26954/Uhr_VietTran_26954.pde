static int diameter = 500;
int radius = diameter/2;

class Clock
{
  private float px,py;
  void drawDigit(int number)
  {
    textSize(20);
    fill(50);
    text(str(number),px,py);
  }
  void calPosition()
  {
    for(int i = 0, j = 1; i < 360 && j <= 12; i+=30, j++)
    {
      float angle = radians(i + 30);
      px = (radius-30)*sin(angle);
      py = -(radius-30)*cos(angle);
      drawDigit(j);
    }
  }
}

Clock clockNumber = new Clock();
void setup()
{
  size(600,600);
}

void draw()
{
  translate(300,300);
  strokeWeight(4);
  fill(255);
  circle(0,0,diameter);
  line(0,0,radius-80,radius-100);
  line(0,0,-radius+90,radius - 230);
  strokeWeight(1);
  circle(0,0,20);
  line(0,0,0,-radius+30);
  clockNumber.calPosition();
}
