PImage imgParado, imgAndando, imgBg1, imgBg2;
int move = 0, moveMapa = 400;

void setup(){
  size(800,600);
  imgParado = loadImage("w1.png");
  imgAndando = loadImage("w4.png");
  imgBg1 = loadImage("mapa.png");
  imgBg2 = loadImage("mapa2.png");
  imageMode(CENTER);
}

void draw(){
  mostraMapa();
  moveP();
  println(moveMapa);
}

void moveP(){
  if (keyPressed){
    if(keyCode == RIGHT){
      moveMapa-=5;
      if (move<15){
        image(imgParado, 400,300);
      }if(move>=15){
        image(imgAndando,400,300);
      }
      if (move >=30){
        move = 0;
      }
    }
  }else{
      image(imgParado, 400,300);
      move = 0;
   }
}

void mostraMapa(){
  image(imgBg1,moveMapa,300);
  image(imgBg2,moveMapa+800,300);
  image(imgBg1,moveMapa+1600,300);
  if (keyPressed){
    if(keyCode == RIGHT){
      move++;
      if (moveMapa<-1200){
        moveMapa = 400;
      }
      
    }
  }
}
