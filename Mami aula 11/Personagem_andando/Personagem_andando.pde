PImage imgPlayer, imgGrama;
float posX = 320, posY = 320;

void setup(){
  size(600,600);
  imgPlayer = loadImage("personagem.png");
  imgGrama = loadImage("grama.png");
  desenhaMapa();
  image(imgPlayer, posX, posY, 100, 74);
}

void draw(){
  mef();
}

void desenhaMapa(){
  for(int i=0; i<640; i+=32)
    for(int j =0; j<640; j+=32){
      imageMode(CENTER);
      image(imgGrama, i+16, j+16);
    }
}

void mef(){
  if(keyPressed){
    desenhaMapa();
    if(keyCode ==  LEFT){
      imageMode(CENTER);
      rotate(radians(180));
      image(imgPlayer, -posX, -posY, 100, 74);
      posX-=5;
      if(posX <=50)
        posX = 50;
    }
    
    if(keyCode ==  RIGHT){
      imageMode(CENTER);
      image(imgPlayer, posX, posY, 100, 74);
      posX+=5;
      if(posX >=width-50)
        posX = width-50;
    }
    
    
    //Essa parte do código verifica o movimento para cima e para baixo
    
    
    //if(keyCode ==  UP){
    //  imageMode(CENTER);
    //  rotate(radians(270));
    //  image(imgPlayer, -posY, posX,  100, 74);
    //  posY-=5;
    //  if(posY <=50)
    //    posY = 50;
    //}
    
    //if(keyCode ==  DOWN){
    //  imageMode(CENTER);
    //  rotate(radians(90));
    //  image(imgPlayer, posY, -posX,  100, 74);
    //  posY+=5;
    //  if(posY >=height-50)
    //    posY = height-50;
    //}
  }
}
