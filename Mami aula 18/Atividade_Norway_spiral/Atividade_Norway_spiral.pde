float raio = 0,ang=TWO_PI/360;
int count=0, x,y;
PImage img;

void setup(){
  size(600,600);
  background(126);
  noStroke();
  x=width/2;
  y=height/2;
  imageMode(CENTER);
  img = loadImage("ceu.jpg");
}

void draw(){
  raio = count/50.0;
  desenhaEspiral();
}

float p2cx(float r, float a){
  return r*cos(a);
}

float p2cy(float r, float a){
  return r*sin(a);
}

void desenhaEspiral(){
  background(0);
  image(img,0,100);
  translate(x,y);
  rotacionar();
  for(int i = 0; i<360+count;i++){
    float cor = (128.0/(360+count))*i;
    fill(255-cor);
    ellipse(p2cx(raio,ang*i), p2cy(raio,ang*i),5,5);
    raio+=0.03;
  }
  count+=1;
}

void rotacionar(){
  rotate(-count%360*ang);
}
