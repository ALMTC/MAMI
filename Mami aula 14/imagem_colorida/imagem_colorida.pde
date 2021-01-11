PImage img;

void setup(){
  size(284,177);
}

void draw(){
  img = loadImage("original.jpeg");
  img.filter(INVERT);
  image(img,0,0);
}
