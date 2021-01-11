float dInicial = 200;
float dFinal = 400;
float d = dInicial;
float variacao = -1;

void setup(){
  size(600,600);
}

void draw(){
  background(123);
  if(d <= dInicial)
    variacao *= -1;
  if(d >= dFinal)
    variacao *= -1;
  d+=variacao;
  yinyang(d);
}

void yinyang(float a){
  noStroke();
  fill(0);
  ellipse(mouseX, mouseY, a,a);
  fill(255);
  arc(mouseX, mouseY, a, a, PI/2, PI+PI/2);
  ellipse(mouseX, mouseY+a/4, a/2, a/2);
  fill(0);
  ellipse(mouseX, mouseY-a/4, a/2, a/2);
  ellipse(mouseX, mouseY+a/4, a/8, a/8);
  fill(255);
  ellipse(mouseX, mouseY-a/4, a/8, a/8);
}
