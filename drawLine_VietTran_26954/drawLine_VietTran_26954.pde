int width = 5, height =5; 
int x1, y1, x2, y2;
boolean clicked;

void setup()
{
  size(600, 600);
  background(255);
}

void drawLine(int x1, int y1, int x2, int y2)
{
  int x, y; 
  int dx = x2-x1;
  int dy = y2-y1;
  double step = 1/sqrt(dx*dx+dy*dy);
  for (double i = 0.0; i<1.0; i+=step)
  {
    x = (int) (x1 + i * dx + 0.5);
    y = (int) (y1 + i * dy + 0.5);
    setPixel(x, y);
  }
}

void setPixel(int x, int y)
{
  rect(x, y, width, height);
}

void mouseClicked()
{
  if (clicked == false)
  {
    x1 = mouseX;
    y1 = mouseY;
    clicked = true; 
    return;
  } else
  {
    x2 = mouseX;
    y2 = mouseY;
    clicked = false;
    drawLine(x1, y1, x2, y2);
  }
}

void draw()
{
 
}
