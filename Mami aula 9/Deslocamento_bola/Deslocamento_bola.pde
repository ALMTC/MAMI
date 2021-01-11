int bolaX = 10;
int bolaY = 300;
int dX = 5;
int dY = 3;

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  ellipse(bolaX, bolaY, 20, 20);
  bolaX += dX;
  bolaY += dY;
  
  if (bolaX >= 590 || bolaX <= 10)
    dX = -dX;
  
  if (bolaY >= 590 || bolaY <=10)
    dY = -dY;
}
