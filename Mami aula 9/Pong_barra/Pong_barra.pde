int bastaoY = 0;

void setup() {
size(600, 600);
}

void draw() {
  background(0);
  rect(570, bastaoY, 20, 100);
  
  if (keyPressed == true)
    if (keyCode == DOWN)
    bastaoY = bastaoY + 7;
    else if (keyCode == UP)
    bastaoY = bastaoY - 7;
  
  if (bastaoY >= 500)
    bastaoY = 500;
  if (bastaoY <= 0)
    bastaoY = 0;

}
