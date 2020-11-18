int x1 = 0, y1 = 0;
int x2 = 200, y2 = 0;

void Rotate()
{  for(int i = 0; i < 360; i+=30)
    {
      
      float angle = radians(i);
      float x3 = 200*sin(angle);
      float y3 = -200*cos(angle);
      line(x1,y1,x3,y3);
      text(str(i),x3,y3);
    }
}

void setup()
{
  size(600,600);
  translate(300,300);
  line(x1,y1,x2,y2);
  Rotate();
 
}

void draw()
{
  
}
