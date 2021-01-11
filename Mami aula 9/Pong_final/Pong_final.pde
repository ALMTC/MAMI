int bastaoY = 0;
int bolaX = 10;
int bolaY = 10;
int dX = 5;
int dY = 3;  
int pJogador = 0;
int pBot = 0;

void setup() {
  size(600, 600);
}

void draw() {
  BG();
  placar();
  moverBola();
  barra();
}

void BG(){
 background(0);
 for(int i = 0; i < 600; i+= 30){
   rect(width/2-10, i, 20,20);
 }
}

void placar(){
  textSize(32);
  text(pBot, width/4, 40);
  text(pJogador, width-width/4, 40);
}

void moverBola(){
  bolaX = bolaX + dX;
  bolaY = bolaY + dY;
  ellipse(bolaX, bolaY, 20, 20);
  
  if (bolaY >= 589 || bolaY <= 10)
    dY = -dY;
  
  if (bolaX > 600){
    bolaX = 10;
    bolaY = int(random(10, 590));
    pBot++;
    pJogador=0;
  }
  
  if (bolaX <= 0)
    dX = -dX;
    
  if((bolaX+10) == 570 && bolaY >= bastaoY && bolaY <= (bastaoY+100)){
    dX = -dX;
    pJogador++;
  }
}

void barra(){
  fill(255);
  rect(570, bastaoY, 20, 100);
  if (keyPressed == true)
    if (keyCode == DOWN)
      bastaoY = bastaoY + 10;
    else if (keyCode == UP)
      bastaoY = bastaoY - 10;
    
  if ((bastaoY + 100) >= height)
    bastaoY = height-100;
  
  if (bastaoY <= 0)
    bastaoY = 0;
}
