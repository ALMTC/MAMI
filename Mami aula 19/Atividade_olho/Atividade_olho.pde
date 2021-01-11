PImage rosto,olho;
int xO = 430, yO = 275;

void setup(){
  size(800,600);
  imageMode(CENTER);
  rosto = loadImage("rosto.png");
  olho = loadImage("olho.png");
}

void draw(){
  desenhaRosto();
}

void desenhaRosto(){
  background(255);
  desenhaOlho();
  image(rosto,400,300);
}

void desenhaOlho(){
  if(dist(xO,yO,mouseX,mouseY)<=125)
    image(olho,mouseX,mouseY);
  else{
    float x = mouseX-xO;
    float y = mouseY-yO;
    float ang = atan2(y,x);
    if (y<0)
      ang+=TWO_PI;
    float raio = 126.0;
    image(olho,xO+p2cx(raio,ang),yO+p2cy(raio,ang));
  }
}

float p2cx(float r, float a){
  return r*cos(a);
}

float p2cy(float r, float a){
  return r*sin(a);
}
