float velocidade = 100;
float ang_base = 2 * PI/(260/5);
int x = 400, y = 400;
int passoLinha = 0;

void setup(){
  colorMode(HSB, 360, 200, 100);
  size(800,800);
  background(0);
}

void draw(){
  grafico();
  desenhaVelocimentro();
  velocidade();
  passoLinha++;
  if (passoLinha > 800){
    passoLinha = 0;
    background(0);
  }
}

void velocidade(){
  if (mousePressed){
    if (velocidade <199)
      velocidade+=2;
  }else
    if (velocidade>1)
      velocidade-=2;
}

void desenhaVelocimentro(){
  translate(x,y);
  rotate(19*ang_base);
  fill(0);
  stroke(0,0,0);
  rectMode(CENTER);
  rect(0,0,450,450);
  noFill();
  stroke(0,velocidade,100);
  ellipse(x,y,50,50);
  arc(0,0,250,250,0, (40)*ang_base);
  arc(0,0,400,400,0, (40)*ang_base);
  desenhaTracosFora(200);
  desenhaTracosDentro(125);
  desenhaLinha();  
}

void desenhaTracosFora(int v1){
  float x1, x2, y1, y2;
  for(int i =0; i <41; i++){
    if(i>0 && i<40 &&i%2 == 0){
      x1 = p2cx(ang_base*i,v1-10);
      y1 = p2cy(ang_base*i,v1-10);
    }else{
      x1 = p2cx(ang_base*i,v1);
      y1 = p2cy(ang_base*i,v1);
    }
    x2 = p2cx(ang_base*i,v1+20);
    y2 = p2cy(ang_base*i,v1+20);
    if (i%2 == 0){
      strokeWeight(3);
    }else{
      strokeWeight(1);
    }
    line(x1,y1,x2,y2);
  }
}

void desenhaTracosDentro(int v1){
  float x1, x2, y1, y2;
  for(int i =0; i <41; i++){
    if(i%2 == 0){
      x1 = p2cx(ang_base*i,v1);
      y1 = p2cy(ang_base*i,v1);
      x2 = p2cx(ang_base*i,v1-10);
      y2 = p2cy(ang_base*i,v1-10);
      line(x1,y1,x2,y2);
    }
  }
}

void desenhaLinha(){
  float x1, y1;
  x1 = p2cx(ang_base/5*velocidade,220);
  y1 = p2cy(ang_base/5*velocidade,220);
  line(0,0,x1,y1);
}

float p2cx(float a, float r) {
  return cos(a) * r;
}

float p2cy(float a, float r) {
  return sin(a) * r;
}

void grafico(){
  stroke(255);
  line(passoLinha,800-velocidade/5,passoLinha,800);
}
