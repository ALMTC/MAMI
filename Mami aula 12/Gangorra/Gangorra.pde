final int ESQUERDA = 0;
final int MEIO_ED = 1;
final int DIREITA = 2;
final int MEIO_DE = 3;

int estadoGangorra = ESQUERDA;
int tempo = 0;

void setup(){
  size(600,600);
  strokeWeight(5);
}

void draw(){
 mostraGangorra(estadoGangorra);
 println(estadoGangorra, tempo);
 MEFGangorra();
 tempo++;
}

void MEFGangorra(){
  if(estadoGangorra == ESQUERDA && tempo>=60){
    estadoGangorra = MEIO_ED;
    tempo = 0;
  }
  
  if(estadoGangorra == MEIO_ED && tempo>=60){
    estadoGangorra = DIREITA;
    tempo = 0;
  }
  
  if(estadoGangorra == DIREITA && tempo>=60){
    estadoGangorra = MEIO_DE;
    tempo = 0;
  }
  
  if(estadoGangorra == MEIO_DE && tempo>=60){
    estadoGangorra = ESQUERDA;
    tempo = 0;
  }
}

void mostraGangorra(int estado){
  background(255);
  triangle(250,400,300,350,350,400);
  switch(estado){
    case ESQUERDA:
      line(200,400,400,300);
    break;
    case MEIO_ED:
    case MEIO_DE:
      line(175,350,425,350);
    break;
    case DIREITA:
      line(200,300,400,400);
    break;
  }
}
