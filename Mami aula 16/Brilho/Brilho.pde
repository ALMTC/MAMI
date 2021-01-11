PImage imgOriginal, imgDestino = createImage(320,240,HSB);;
color corOriginal, corDestino;
float var = 0, variacao = 0.01;

void setup(){
  size(640,240);
  colorMode(HSB, 360,100,100);
  imgOriginal = loadImage("personagem.jpg");
}

void draw(){
  ProcessaImagem(var);
  image(imgOriginal,0,0);
  image(imgDestino,320,0);
  var+=variacao;
  if (var>=1.0)
    variacao = -variacao;
  else if (var <= 0)
    variacao =- variacao;
}


void ProcessaImagem(float valor){
  float h,s,b;
  for(int x =0; x < 320; x++)
    for(int y = 0; y < 240; y++){
      corOriginal = imgOriginal.get(x,y);
      h = hue(corOriginal);
      s = saturation(corOriginal);
      b = brightness(corOriginal) * valor;
      corDestino = color(h,s,b);
      imgDestino.set(x,y,corDestino);
    }
}
