int bastaoY = 0;
int bolaX = 10;
int bolaY = 10;
int dX = 5;
int dY = 3;  

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  rect(570, bastaoY, 20, 100);
  
  ellipse(bolaX, bolaY, 20, 20);
  
  bolaX = bolaX + dX;
  bolaY = bolaY + dY;
  
  if (bolaX <= 0 || (bolaX+10) >= 570 && (bolaY-10) >= bastaoY && (bolaY+10) <= (bastaoY+100))
    dX = -dX;
    
  if (bolaY >= 590 || bolaY <= 10)
    dY = -dY;
  if (bolaX > 600){
    bolaX = width/2;
    bolaY = height/2;
  }
  if (keyPressed == true)
    if (keyCode == DOWN)
      bastaoY = bastaoY + 7;
    else if (keyCode == UP)
      bastaoY = bastaoY - 7;
    
  if ((bastaoY + 100) >= height) {
    bastaoY = height-100;
  }
  
  if (bastaoY <= 0) {
    bastaoY = 0;
  }
}  
