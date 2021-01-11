PImage imgOriginal;
PImage imgDestino = createImage(284,177,RGB);
color corOriginal, corDestino;
float r,g,b,media;

void setup(){
  size(568,177);
  imgOriginal = loadImage("original.jpeg");
  processaImagem();
  image(imgOriginal,0,0);
  image(imgDestino,284,0);
}

void processaImagem(){
  for(int x=0; x<284; x++){
    for(int y=0; y<177; y++){
      corOriginal = imgOriginal.get(x,y);
      r = red(corOriginal);
      g = green(corOriginal);
      b = blue(corOriginal);
      media = (0.3*r + 0.59*g + 0.11*b);
      //media = (r+g+b)/3;
      corDestino = color(255-r,255-g,255-b);
      imgDestino.set(x,y,corDestino);
    }
  }
}
