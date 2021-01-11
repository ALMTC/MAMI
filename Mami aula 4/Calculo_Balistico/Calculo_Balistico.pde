float dAtualX = 0;
float vAtualX = 30;
float dAtualY;
float vAtualY = 30;
float tAtual = 0;
float Acell = -3;  

void setup(){
  frameRate(1);
  size(600,600);
  background(255);
  mostraMundo();
}

void draw(){
  dAtualY = (MRUV(vAtualY, Acell ,tAtual));
  dAtualX = (MRU(vAtualX, tAtual));
  print("Tempo:", tAtual, "Distancia Vertical: ", dAtualY, "Distancia Horizontal: ",dAtualX);
  println("");
  //background(255);
  //mostraMundo();
  ellipse(MRU(vAtualX, tAtual), height-MRUV(vAtualY, Acell, tAtual)+5 , 10, 10);
  tAtual++;
}

void mostraMundo(){
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
