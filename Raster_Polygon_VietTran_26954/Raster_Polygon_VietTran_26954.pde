int unit = 5; 
int width = 600, height = 600;

class Point{
  public int x,y; 
  public int value;
}
class Vector{
    int vx,vy;  
    Vector(int vx, int vy){
        this.vx =vx;
        this.vy = vy;
    }
}

class Polygon{
   Vector v1;
   Vector v2;
   Vector v3;
    
    Polygon(){
        v1 = new Vector(30,40);
        v2 = new Vector(300,200);
        v3 = new Vector(200,40);
    }
    Polygon translate(){
       pol.v1.vx = mouseX;
       pol.v1.vy = mouseY;
              
       pol.v2.vx = mouseX + 270;
       pol.v2.vy = mouseY + 160;
              
       pol.v3.vx = mouseX + 170;
       pol.v3.vy = mouseY;
           
       return pol;
    }
}

void drawPolygon(){
      line(pol.v1.vx,pol.v1.vy,pol.v2.vx,pol.v2.vy);
      line(pol.v2.vx,pol.v2.vy,pol.v3.vx,pol.v3.vy);
      line(pol.v3.vx,pol.v3.vy,pol.v1.vx,pol.v1.vy);
}

Point raster [][] = new Point[width][height];
void initialRaster(){
    for(int x=0; x<width; x++){
        for(int y=0; y<height; y++){
            raster[x][y] = new Point();
            raster[x][y].x = x*unit;
            raster[x][y].y = y*unit;
            raster[x][y].value = 0;
        }
    }
}

void setPixel(int x, int y){
    rect(x,y,unit,unit);
}

void drawRaster(){
    for(int x=0; x<width; x++){
        for(int y=0; y<height; y++){ 
          if(raster[x][y].value == 1) fill(255,0,0);
          else fill(255,255,255);
          setPixel(raster[x][y].x,raster[x][y].y);        
        }
    }
}

Polygon pol = new Polygon();

void setup(){
   size(600,600);
   background(0);
   rectMode(CENTER);
   initialRaster();
 
}
void draw(){
    drawRaster();
    drawPolygon();
    if(mousePressed)
    {
        pol.translate();
        raster[mouseX/5][mouseY/5].value = 1;     
    }
}
