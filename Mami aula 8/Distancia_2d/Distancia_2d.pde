int distancia1D(int A, int B){
  int resposta;
  resposta =abs(B - A);
  return resposta;
}

void setup(){
 size(800,600);
}

void draw(){
  background(255);
  float distancia = (distancia2D(width/2, height/2, mouseX, mouseY));
  line(width/2, height/2, mouseX, mouseY);
  fill(0);
  text(distancia, mouseX, mouseY);
}

float distancia2D(int x1, int y1, int x2, int y2){
  int a = distancia1D(x1, x2);
  int b = distancia1D(y1, y2);
  return sqrt(sq(a) + sq(b));
}
