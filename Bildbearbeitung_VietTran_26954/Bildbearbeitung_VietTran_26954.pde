int width = 600, height = 600;
int n = 0;

class DrawImage extends PImage{
    PImage rotateLeft(){
        rotate(radians(-90+n));
        displayImage();
        return img;     
    }
     PImage rotateRight(){
        rotate(radians(90+n));
        displayImage();
        return img;
    }
    void displayImage(){
        //translate(width/2,height/2);
        image(img,0,0);
    }
}

PImage img; 
DrawImage imgRotate = new DrawImage();
void setup(){
    size(600,600);
    imageMode(CENTER);
    img = loadImage("Pfeil.png");
    translate(width/2, height/2);
    image(img,0,0);
}

void mouseClicked(){
    if(mouseButton == LEFT){
        imgRotate.rotateLeft();
        n -= 90;
    }
    if(mouseButton == RIGHT){
        imgRotate.rotateRight();
        n += 90;
    }
}

void draw(){ 
     translate(width/2,height/2);   
}
