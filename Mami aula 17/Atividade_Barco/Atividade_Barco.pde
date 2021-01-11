float var=0, periodo = 15, amplitude = 15;
PImage barco;
int frames = 0;

void setup(){
  size(800,400);
  noStroke();
  barco = loadImage("barco.png");
}

void draw(){
  BG();
  barco();
  var+=0.1;
}

void onda(){
  float x = 0;
  for(x=0; x<55; x+=0.1){
    float y = sin(x);
    fill(10,10,143);
    //ellipse(x*periodo,y*amplitude+300,5,5);
    ellipse(x*periodo,y*amplitude+315,5,35);
  }
}

void BG(){
  background(161,233,248);
  fill(0,100,0);
  ellipse(400,300, 500,200);
  ellipse(520,250, 200,300);
  onda();
  rect(0,313,800,100);
  fill(255,255,0);
  ellipse(700,90,80,80);
}

void barco(){
  imageMode(CENTER);
  translate(var*periodo,sin(var)*amplitude+240);
  rotate(cos(var)*0.5);
  image(barco,0,0);
  if(var>=55)
    var = 0;
}
