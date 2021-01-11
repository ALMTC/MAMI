int tAtual = 0;
int vAtual = 15;
int dAtual;

void setup() {
    frameRate(1);
}

void draw() {
    dAtual = MRU(vAtual, tAtual);
    println("Tempo: " + tAtual + " segundos", "Distância: " + dAtual +" metros");
    tAtual++;
  }

int MRU(int v, int t) {
  int d;
  d = v * t;
  return d;
}
