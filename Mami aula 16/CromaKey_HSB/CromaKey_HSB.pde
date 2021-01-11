PImage imgPersonagem, imgCenario;
PImage imgResultado = createImage(320,240,HSB);

void setup(){
  size(960,240);
  colorMode(HSB, 360,100,100);
  imgPersonagem = loadImage("personagem.jpg");
  imgCenario = loadImage("cenario.JPG");
  cromaKey();
  image(imgPersonagem,0,0);
  image(imgCenario,320,0);
  image(imgResultado,640,0);
}


void cromaKey(){
  color corPersonagem, corCenario;
  float h;
  for(int x =0; x < 320; x++)
    for(int y = 0; y < 240; y++){
      corPersonagem = imgPersonagem.get(x,y);
      h = hue(corPersonagem);
      if (h>100 && h<150){
        corCenario = imgCenario.get(x,y);
        imgResultado.set(x,y, corCenario);
      }
      else{
        imgResultado.set(x,y,corPersonagem);
      }
    }
}
