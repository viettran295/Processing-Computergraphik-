class Rect
{
  int x1,y1;
  int x2,y2;
  int x3,y3;
  int x4,y4;
  
  Rect()
  {
    x1 = 20;
    y1 = 30;
    
    x2 = 60;
    y2 = 30;
    
    x3 = 60;
    y3 = 90;
    
    x4 = 20;
    y4 = 90;
  }
  
}

class Vector
{
  int x,y;
  Vector()
  {
    x = 10;
    y = 20;
  }
}

void drawRect(Rect s)
{
  line(s.x1,s.y1,s.x2,s.y2);
  line(s.x2,s.y2,s.x3,s.y3);
  line(s.x3,s.y3,s.x4,s.y4);
  line(s.x4,s.y4,s.x1,s.y1);
  
}

Rect translate(Rect p1, Vector v)
{
  Rect p2 = new Rect();
  p2.x1 = p1.x1 + v.x;
  p2.y1 = p1.y1 + v.y;
 
  p2.x2 = p1.x2 + v.x;
  p2.y2 = p1.y2 + v.y;
 
  p2.x3 = p1.x3 + v.x;
  p2.y3 = p1.y3 + v.y;
  
  p2.x4 = p1.x4 + v.x;
  p2.y4 = p1.y4 + v.y;
 
  return p2;
}

Rect rotate(Rect p, float angle)
{
  Rect p2 = new Rect();
 
  p2.x1 = p.x1 + 40*(int)cos(angle);
  p2.y1 = p.y1 + 40*(int)sin(angle);
  
  p2.x2 = p.x2*(int)cos(angle)-p.y2*(int)sin(angle);
  p2.y2 = p.x2*(int)sin(angle)+p.y2*(int)cos(angle);
   
  p2.x3 = p.x3*(int)cos(angle)-p.y3*(int)sin(angle);
  p2.y3 = p.x3*(int)sin(angle)+p.y3*(int)cos(angle);
  
  p2.x4 = p.x4*(int)cos(angle)-p.y4*(int)sin(angle);
  p2.y4 = p.x4*(int)sin(angle)+p.y4*(int)cos(angle);
  return p2;
}
//void scale(Rect p, int xScale, int yScale)
//{
  
//}

Rect t = new Rect();
Vector vec = new Vector();
Rect r = new Rect();
void setup()
{
  size(600, 600);
  //background(255);
}

void draw()
{
  //clear();
  //background(255,255,255);
  //drawRect(t);
  drawRect(r);
  if(mousePressed)
  {
    r = rotate(r,10.0);
    //t = translate(t,vec);
  }
}
