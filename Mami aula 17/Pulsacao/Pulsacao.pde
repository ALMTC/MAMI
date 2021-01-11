void setup(){
  size(800, 600);
}
float a = 0, cor;
void draw(){
  background(0);
  cor = 127*(sin(a)+1);
  fill(cor);
  ellipse(400, 300, 200, 200);
  a+=0.05;
}
