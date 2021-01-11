PImage imgOriginal;
color corOriginal,corDestino;

void setup(){
  size(284,177);
  imgOriginal = loadImage("original.jpeg");
  Ruido();
  image(imgOriginal,0,0);
}

void Ruido(){
  for(int i=0; i<10000; i++){
    //corOriginal = imgOriginal.get(int(random(284)),int(random(177)));
    corDestino = color(random(255),random(255),random(255));
    imgOriginal.set(int(random(284)),int(random(177)),corDestino);
  }
}
