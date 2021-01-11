float tg,x,y,ang;
int xO,yO;

void setup(){
  size(600,600);
  textSize(14);
  colorMode(HSB,360,100,100);
  xO = 300;
  yO = 300;
}

void draw(){
  mostraTan();
}

void mostraTan(){
  //background(126);
  x = mouseX-xO;
  y = mouseY-yO;
  ang = atan2(y,x);
  if (y<0)
    ang+=TWO_PI;
  //text(degrees(ang),mouseX, mouseY);
  stroke(degrees(ang),100,100);
  line(xO,yO,mouseX,mouseY);
}
