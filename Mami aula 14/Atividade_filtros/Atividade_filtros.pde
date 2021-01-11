PImage imgOriginal;
color corOriginal,corDestino;
float r,g,b,media;

void setup(){
  size(1345,478);
  imgOriginal = loadImage("img.jpg");
  image(imgOriginal,0,0);
  Ruido();
  image(imgOriginal,269,0);
  Cinza();
  image(imgOriginal,538,0);
  Vermelho();
  image(imgOriginal,807,0);
  Amarelo();
  image(imgOriginal,1076,0);
}

void Ruido(){
  for(int i=0; i<10000; i++){
    corDestino = color(random(255),random(255),random(255));
    imgOriginal.set(int(random(269)),int(random(478)),corDestino);
  }
}

void Cinza(){
  for(int x =0; x < 269; x++)
    for(int y = 0; y < 478; y++){
      corOriginal = imgOriginal.get(x,y);
      r = red(corOriginal);
      g = green(corOriginal);
      b = blue(corOriginal);
      media = (0.3*r + 0.59*g + 0.11*b);
      corDestino = color(media,media,media);
      imgOriginal.set(x,y,corDestino);
    }
}

void Vermelho(){
  for(int x =0; x < 269; x++)
    for(int y = 0; y < 478; y++){
      corOriginal = imgOriginal.get(x,y);
      r = red(corOriginal);
      g = green(corOriginal);
      b = blue(corOriginal);
      corDestino = color(200,g,b);
      imgOriginal.set(x,y,corDestino);
    }
}

void Amarelo(){
  for(int x =0; x < 269; x++)
    for(int y = 0; y < 478; y++){
      corOriginal = imgOriginal.get(x,y);
      r = red(corOriginal);
      g = green(corOriginal);
      b = blue(corOriginal);
      corDestino = color(r,g,0);
      imgOriginal.set(x,y,corDestino);
    }
}
