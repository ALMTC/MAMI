int linhas = 5;
int colunas = 5;

void cor(){
  fill(int(random(255)), int(random(255)), int(random(255)));
}

void bloco(int x, int y) {
  cor();
  rect(x-60,y-60,120,120);
  cor();
  ellipse(x, y, random(80,110), random(80,110));
  cor();
  ellipse(x, y, random(50,70), random(50,70));
  cor();
  ellipse(x, y, random(10,40), random(10,40));
}

void setup() {
  size(600,600);
  for (int i = 60; i < (colunas * 120); i+= 120)
  {
    for (int j = 60; j < (linhas * 120); j+= 120)
    {
      bloco(i, j);
    }
  }
}
