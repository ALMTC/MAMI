float ang = 0;

void setup() {
  colorMode(HSB, 360, 100, 100);
  background(255);
  size (600, 600);
}

void draw(){
  //println(ang);
  ang += 0.1;
  int x = int(p2cx(ang, 250));
  int y = int(p2cy(ang, 250));
  float matiz = degrees(ang)%360;
  println(matiz);
  stroke(matiz, 100, 100);
  strokeWeight(10);
  line(300, 300, 300 + x, 300 + y);
}

float p2cx(float a, float r) {
  return cos(a) * r;
}

float p2cy(float a, float r) {
  return sin(a) * r;
}
