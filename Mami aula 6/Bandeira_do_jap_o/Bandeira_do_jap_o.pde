void setup(){
  size(800,600); 
}

void draw(){
  background(0);
  //mostraBandeira(mouseX);
  mostraBandeira2(300, mouseX, mouseY); 
}

void mostraBandeira(float largura){
  float modulo = largura/3.0;
  float altura = modulo * 2;
  float Rx = (width-largura)/2;
  float Ry = (height-altura)/2; 
  float Cx = width/2;
  float Cy = height/2;
  float d = 3.0/5 * altura;
  fill(255);
  noStroke();
  rect(Rx, Ry, largura, altura);
  fill(255,0,0);
  ellipse(Cx, Cy, d, d);
}

void mostraBandeira2(float largura, float x, float y){
  float modulo = largura/3.0;
  float altura = modulo * 2;
  float Rx = x - (largura/2);
  float Ry = y - (altura/2);
  float Cx = x;
  float Cy = y;
  float d = 3.0/5 * altura;
  fill(255);
  noStroke();
  rect(Rx, Ry, largura, altura);
  fill(255,0,0);
  ellipse(Cx, Cy, d, d);
}
