void setup(){
  size(800,600);
}

void draw(){
  bg();
  circulo();
}

void bg(){
  noStroke();
  rectMode(CENTER);
  fill(123);
  rect(width/2,height/2,800,600);
  fill(255);
  rect(width/2,height/2,480,270);
}

void circulo(){
  fill(0);
  float xI;
  float yI;
  xI = map(mouseX,0,800,165,635);
  yI = map(mouseY,0,600,170,430);
  ellipse(xI,yI,10,10);
  text("Distância entre pontos:"+dist(mouseX,mouseY,xI,yI),mouseX,mouseY);
}
