PImage imgMpulando, imgMmartelando, imgMparado;
int estado = 0, posX = 125, PARADO = 0, MARTELANDO = 1, PULANDO = 2, MATELAR_P = 3, PULAR_M = 4;
float Tmartelando = 0, Tpulando = 0, acell = -0.1, velocidadeP = 1.7, posY = 300;
boolean pulando = false, martelando = false;

void setup(){
  size(600,600);
  imgMparado = loadImage("parado.png");
  imgMmartelando = loadImage("martelando.png");
  imgMpulando = loadImage("pulando.png");
}

void draw(){
  desenhaTela();
  MFEmario();
}

void MFEmario(){
  if (keyPressed){
    if(key == ' ' && !pulando){
      martelando = true;
      estado = 1;
    }
    if(keyCode == UP && !martelando){
      pulando = true;
      estado = 2;
    }
    if (keyCode == UP && martelando){
      estado = 3;
      pulando = true;
    }
    if (key == ' ' && pulando){
      estado = 4;
      martelando = true;
    }
  }
  if(!pulando && !martelando){
    estado = 0;
  }
  if(pulando && posY <=300){
    print(" ");
    Tpulando++;
    MRUV(velocidadeP, acell, Tpulando);
    if (posY>=300){
      Tpulando = 0;
      posY = 300;
      pulando = false;
    }
  }
  if(martelando){  
    Tmartelando++;
    if(Tmartelando >= 60){
      Tmartelando =0;
      estado = 0;
      martelando = false;
    }
      
  }
}

void desenhaTela(){
  textSize(36);
  background(128);
  if (estado == 0){
    image(imgMparado, posX, posY);
    text("Parado", 0,36);
  }
  if (estado == 1){
    image(imgMmartelando, posX, posY);
    text("Martelando", 0,36);
  }
  if (estado == 2){
    image(imgMpulando, posX, posY);
    text("Pulando", 0,36);
  }
  if (estado == 3){
    image(imgMmartelando, posX, posY);
    text("Pular Martelando", 0,36);
  }
  if (estado == 4){
    image(imgMmartelando, posX, posY);
    text("Martelar Pulando", 0,36);
  }
}

void MRUV(float v, float a, float t){
  posY -= v * t + a * t * t / 2;
}
