float dAtualX;
float dAtualY;
float vAtualX = 30;
float vAtualY = 30;
float tAtual = 0;
float Acell = -3;  
float VinicialY = vAtualY;
float VelocidadeV;

void setup(){
  size(600,600);
  mostraMundo();
}

void draw(){
  dAtualX = (MRU(vAtualX, tAtual));
  dAtualY = (MRUV(vAtualY, Acell ,tAtual));
  VelocidadeV = VelocidadeVertical(VinicialY, Acell, tAtual);
  mostraMundo();
  exibeTexto();
  fill(255,0,0);
  ellipse(dAtualX + 5, height - dAtualY + 5 , 10, 10);
  tAtual+= 1.0 / 60;
}

void mostraMundo(){
  background(255);
  for(int i = 0; i < 12; i++){
    line(i*50,0,i*50,600);
    line(0,i*50, 600, i*50);
  }
}

float MRU(float v, float t){
  float d;
  d = v * t;
  return(d);
}

float MRUV(float v, float a, float t){
  float d;
  d = v * t + a * t * t / 2;
  return(d);
}

float VelocidadeVertical(float v1, float a, float t){
  return v1 + a * t;
}

float Velocidadehorizontal(float d, float t){
  return d * t; 
}

void exibeTexto(){
  fill(255);
  rect(0, 0, 200, 100);
  fill(0);
  text("Tempo: " + tAtual, 10, 20);
  text("Distânci Horizontal: " + dAtualX, 10, 30);
  text("Velocidade Horizontal: " + vAtualX, 10, 40);
  text("Aceleração Vertical: " + Acell, 10, 50);
  text("Distância Vertical: " + dAtualY, 10, 60);
  text("Velocidade Vertical :" + VelocidadeV, 10, 70);
}
