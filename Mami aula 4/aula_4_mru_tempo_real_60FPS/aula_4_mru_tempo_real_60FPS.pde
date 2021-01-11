float tAtual = 0;
float vAtual = 15;
float dAtual;


void draw() {
    dAtual = MRU(vAtual, tAtual);
    println("Tempo: " + tAtual + " segundos", "Distância: " + dAtual +" metros");
    tAtual+= 1.0 / 60;
  }

float MRU(float v, float t) {
  float d;
  d = v * t;
  return d;
}
