int unit = 5;
int width = 600, height = 600;
int [][] raster = new int [height][width]; 
int xHeight1 = 0, yHeight1 = 0;
int xHeight2 = 600, yHeight2 = 0;
int xWidth1 = 0, yWidth1 = 0;
int xWidth2 = 0, yWidth2 = 600;

void setup()
{
  size(600,600);
  background(144,238,144);

}

void Raster()
{
  for(int i = 0; i < height; i+= unit)
  {
    for(int j = 0; j < width; j+= unit)
    {
      line(xWidth1+j,yWidth1,xWidth2+j,yWidth2);
    }
      line(xHeight1,yHeight1+i,xHeight2,yHeight2+i);
  }
}

void draw()
{
  Raster();
}
