int[][] mapa = {{1,1,1,1,1,1,1},
                {1,2,4,4,4,4,4},
                {1,3,5,5,5,5,0},
                {1,3,5,5,5,0,0},
                {1,3,5,5,0,0,0},
                {1,3,5,0,0,0,0},
                {1,3,0,0,0,0,0},
};
PImage imgGrama, imgGesquerda, imgGdireita, imgGcima, imgAreia, imgAgua;


void setup(){
  frameRate(1);
  size(448,260);
  imgGrama = loadImage("grama.png");
  imgGesquerda = loadImage("grama_esquerda.png");
  imgGdireita = loadImage("grama_direita.png");
  imgGcima = loadImage("grama_cima.png");
  imgAreia = loadImage("areia.png");
  imgAgua = loadImage("agua.png");
  desenha();
}

void desenha(){
  for(int i = 0; i<7; i++)
    for(int j = 0; j<7; j++){
      switch(mapa[i][j]){
        case 0:
          image(imgAgua, 192 - 32*i + 32*j, 18*i + 18*j+1);
        break;
        case 1:
          image(imgGrama, 192 - 32*i + 32*j, 18*i + 18*j);
        break;
        case 2:
          image(imgGcima, 192 - 32*i + 32*j, 18*i + 18*j);
        break;
        case 3:
          image(imgGesquerda, 192 - 32*i + 32*j, 18*i + 18*j);
        break;
        case 4:
          image(imgGdireita, 192 - 32*i + 32*j, 18*i + 18*j);
        break;
        case 5:
          image(imgAreia, 192 - 32*i + 32*j, 18*i + 18*j);
        break;
      
    }
  }
    
}
