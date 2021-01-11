float raio = 100;
int lados = 3;
void setup(){
  size(600,600);
  desenha_forma(raio,lados);
}

void draw(){
  
}

float p2cx(float r, float a){
  return r*cos(a);
}

float p2cy(float r, float a){
  return r*sin(a);
}
int x = 300, y = 300;
void desenha_forma(float raio, int lados){
  float ang = TWO_PI/lados;
  //ellipse(300,300,200,200);
  println("raio:", raio, "Númeor de lados da forma:", lados);
  println("Angulo entre as fatias: ",ang);
  for (int i = 0; i<lados; i++){
    println("Pontos polares:",raio, ang*i);
  }
  
  for (int i = 0; i<lados; i++){
    println("Pontos Cartesinos:",x+p2cx(raio,ang*i), y+p2cy(raio,ang*i));
  }
  
  for (int i = 0; i<lados; i++){
    ellipse(x+p2cx(raio,ang*i), y+p2cy(raio,ang*i),5,5);
  }
  
  for (int i = 0; i<lados; i++){
    line(x+p2cx(raio,ang*i), y+p2cy(raio,ang*i),x+p2cx(raio,ang*(i+1)), y+p2cy(raio,ang*(i+1)));
  }
  
}
