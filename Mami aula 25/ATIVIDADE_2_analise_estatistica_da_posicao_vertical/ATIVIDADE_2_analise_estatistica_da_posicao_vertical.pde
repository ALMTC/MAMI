int cont = 0;
int[] pos = new int[300];
float media = 0;
float desvioPadrao=0;

void setup() {
  background(255);
  size (600, 600);
  noStroke();
}

void draw(){
  mostraPosicaoMouse();
  mostraMedia();
  mostraDesvioPadrao();
  println(cont, mouseY, media);
  pos[cont%300]= mouseY;
  cont++;
  if (cont > 600){
    cont = 0;
    background(255);
  }
}

void mostraDesvioPadrao() {
  desvioPadrao = calculaDesvioPadrao();
  fill(0, 0, 255);
  ellipse(cont, desvioPadrao, 10, 10);
}

void mostraMedia() {
  media = calculaMedia();
  fill(0, 255, 0);
  ellipse(cont, media, 10, 10);
}

void mostraPosicaoMouse() {
  fill(255, 0, 0);
  ellipse(cont, mouseY, 10, 10);
}

float calculaMedia(){
  int soma = 0;
  for(int i = 0; i < 300; i++){
    soma += pos[i];
  }
  return (soma / 300);
}

float calculaDesvioPadrao(){
  float soma = 0;
  for(int i = 0; i < 300; i++){
    soma += pow(pos[i]-media,2);
  }
  return (sqrt(soma / 300));
}
