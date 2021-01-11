PImage ImgGrama;

void setup(){
  size(256,256);
  ImgGrama = loadImage("grama.png");
  for (int x = 0; x<8; x++)
    for (int y = 0; y<8; y++)
      image(ImgGrama,x*32,y*32); 
}
