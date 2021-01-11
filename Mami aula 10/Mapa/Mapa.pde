int[][] mapa = {{0, 0, 0, 0, 0, 0, 0, 0},
                {0, 1, 1, 2, 1, 1, 2, 0},
                {0, 1, 2, 0, 0, 1, 2, 0},
                {0, 1, 2, 0, 0, 1, 2, 0},
                {0, 1, 2, 0, 0, 1, 2, 0},
                {0, 1, 2, 0, 0, 1, 2, 0},
                {0, 1, 1, 2, 1, 1, 2, 0},
                {0, 0, 0, 0, 0, 0, 0, 0}};
PImage imgGrama, imgMuro, imgSombra;          
void setup(){
  size(256,256);
  imgGrama = loadImage("grama.png");
  imgMuro = loadImage("muro.png");
  imgSombra = loadImage("sombra.png");
  mostraMapa(); 
}

void mostraMapa(){
  for (int x = 0; x<8; x++)
    for (int y = 0; y<8; y++)
      switch(mapa[y][x]){  
        case 0:
          image(imgGrama,x*32, y*32);
        break;
        case 1:
          image(imgMuro, x*32, y*32);
        break;
        case 2:
          image(imgSombra, x*32, y*32);
        break;
      }
}
