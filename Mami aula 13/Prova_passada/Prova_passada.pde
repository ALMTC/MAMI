PImage imgD, imgE, imgP;
int posX, disR = 0, disP = 0; //disR e disP são as distâncias percorridas tanto pelo player, quanto pelo robo
boolean direita = false, esquerda = false;

void setup(){
  size(600,600);
  imgD = loadImage("direita.png");
  imgE = loadImage("esquerda.png");
  imgP = loadImage("parado.png");
  posX = int(random(width-imgP.width));
}

void draw(){
  background(255);
  Player();
  desenhaRobo(posX, height-disR); //height-disR é o ponto da origem do retângulo, estou usando esse valor para que o robo tenha a mesma altura do pleyer.
  deus();
}

void desenhaRobo(int x, int y){ //código para desenhar o robo, onde a origem é o canto inferior esquedo.
  disR+=1;
  fill(0);
  ellipse(x+11,y-11,22,22);
  ellipse(x+33,y-11,22,22);
  fill(255,0,0);
  triangle(x+22,y-37,x,y-17,x+44,y-17);
  fill(0,255,0);
  rect(x,y-57,44,20);
}

void Player(){
  if(keyPressed){
    if(keyCode == LEFT && !esquerda){
      esquerda = true;
      direita = false;
      posX-=22;
      disP+=6;
    }
    if(keyCode == RIGHT && !direita){
      esquerda = false;
      direita = true;
      posX+=22;
      disP+=6;
    }
  }
  if(direita)
    image(imgD, posX, disP);
  
  if(esquerda)
    image(imgE, posX, disP);
    
  if(!esquerda && !direita)
    image(imgP, posX, disP);
}

void deus(){
  println("roob",disR, "player", disP);
  if((disR+disP+114)>=height){ // essa lógica usa a soma das duas distãncias percorridas mais a soma das alturas dos objetos e verifica se o valor é maior ou igual a altura da tela. Se a condição for cumprida, significa que houve uma colisão.
    //background(255); //usar caso queria limpar a tela para mostrar o resultado
    textAlign(CENTER);
    fill(0);
    if(disR>disP)
      text("Vencedorfoi o robo, percorrendo a distância de:"+ disR,300,300);
    else if(disP>disR)
      text("Vencedorfoi o player, percorrendo a distância de:"+ disP,300,300);
    else
      text("Houve um empate, ambos percorreram a distância de: "+ disP, 300,300);
    stop();
  }
    
}
