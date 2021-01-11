void setup(){
  size(800, 600);
  noStroke();
}
float x=0, periodo = 10, amplitude = 10;

void draw(){
  float y = sin(x);
  x+= 0.1;
  ellipse(x*periodo,y*amplitude+300,5,5);
  if(x>600)
    x=0.0;
}
