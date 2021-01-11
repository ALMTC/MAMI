final int ESQUERDA = 0;
final int MEIO_ED = 1;
final int DIREITA = 2;
final int MEIO_DE = 3;
final int PARADO = 0;
final int MARTELANDO = 1;

PImage imgParado, imgMartelando, imgParado2, imgMartelando2;
int tempoParado = 0, tempoMartelando = 0;
int estadoGangorra = ESQUERDA;
int estadoMario = PARADO;
int estadoMario2 = PARADO;
int tempo = 0;
int pontuacao1 = 0;
int pontuacao2 = 0;


void setup(){
  size(600,600);
  strokeWeight(5);
  imgParado = loadImage("parado.png");
  imgMartelando = loadImage("martelando.png");
  imgParado2 = loadImage("parado.png");
  imgMartelando2 = loadImage("martelando.png");
}

void draw(){
 background(255);
 MEFGangorra();
 mostraGangorra(estadoGangorra);
 MEFMario();
 MostraMario(estadoMario);
 MEFMario2();
 MostraMario2(estadoMario2);
 Deus();
 tempo++;
}

void MEFMario(){
  if(estadoMario == PARADO){
    tempoParado++;
    if(tempoParado >= 80){
       tempoParado = 0;
       estadoMario = MARTELANDO;
    }
  }
  if (estadoMario == MARTELANDO){
    tempoMartelando++;  
    if (tempoMartelando >= 30){
        tempoMartelando = 0;
        estadoMario = PARADO;
      }
  }
}

void MEFMario2(){
  if(estadoMario2 == PARADO){
    if(keyPressed && keyCode==UP){
      estadoMario2 = MARTELANDO;
    }
  }
  if (estadoMario2 == MARTELANDO){
    tempoMartelando++;  
    if (tempoMartelando >= 30){
        tempoMartelando = 0;
        estadoMario2 = PARADO;
      }
  }
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

void MostraMario(int estado){
  if(estado == PARADO){
     image(imgParado,475,250, 150, 150);
  }
  if(estado == MARTELANDO)
     image(imgMartelando, 400,250,150,150);
}

void MostraMario2(int estado){
  if(estado == PARADO){
    push(); 
    translate(125,250); 
    scale(-1.0,1.0); 
    image(imgParado,0,0, 150, 150); 
    pop();
  }
  if(estado == MARTELANDO){
    push(); 
    translate(200,250); 
    scale(-1.0,1.0); 
    image(imgMartelando,0,0, 150, 150); 
    pop();
  }
}

void mostraGangorra(int estado){
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

void Deus(){
  if(estadoGangorra == DIREITA && estadoMario == MARTELANDO){
    pontuacao1++;
    println("Pontuação Mario Direita: ", pontuacao1);
    println("Pontuação Mario Esquerda: ", pontuacao2);
  }
  if(estadoGangorra == ESQUERDA && estadoMario2 == MARTELANDO){
    pontuacao2++;
    println("Pontuação Mario Direita: ", pontuacao1);
    println("Pontuação Mario Esquerda: ", pontuacao2);
  }
  if((estadoGangorra == MEIO_ED || estadoGangorra == MEIO_DE) && estadoMario == MARTELANDO && estadoMario2 == MARTELANDO){
    println("TILT");
    Fim();
  }
  if(pontuacao1 > 100 || pontuacao2 > 100){
    Fim();
  }
}

void Fim(){
  if(pontuacao1 > 100)
    println("Mario da Direta Venceu");
  else if(pontuacao2 > 100)
    println("Mario da Esquerda Venceu");
  else
    println("Ninguem venceu");
  noLoop();
}
