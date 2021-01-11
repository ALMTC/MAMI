float ang = TWO_PI/5;
int x = 300, y = 300;
float[] eixo = new float[5];

void setup(){
  colorMode(HSB, 360, 50, 50);
  size(600,600);
  strokeWeight(1);
  frameRate(15);
  textAlign(CENTER,CENTER);
}

void draw(){
  background(0,0,50);
  sorteiaEixo();
  desenhaFormas();
  desenharede(10);
  if(max(eixo) >=50){
    noLoop();
  }
}

float p2cx(float r, float a){
  return r*cos(a);
}

float p2cy(float r, float a){
  return r*sin(a);
}

void desenharede(int raioI){
  fill(0);
  strokeWeight(1);
  for(int j = 5; j <30; j+=5){
    int raio = raioI*j;
    for (int i = 0; i<5; i++){
      line(x+p2cx(raio,ang*i), y+p2cy(raio,ang*i),x+p2cx(raio,ang*(i+1)), y+p2cy(raio,ang*(i+1)));
    }
    for (int i = 0; i<5; i++){
      line(x,y,x+p2cx(raio,ang*(i)), y+p2cy(raio,ang*(i)));
      if(i == 0){
        text(j*2,x+p2cx(raio,ang*(i)), y-10+p2cy(raio,ang*(i)));
      }
    }
    if(j == 25){
      for (int i = 0; i<5; i++){
        if(eixo[i]==50)
          fill(0,50,50);
        else
          fill(0);
        text(i+1,x+p2cx(raio+10,ang*(i)), y+p2cy(raio+10,ang*(i)));
      }
    }
  }
}

void sorteiaEixo(){
  int i = int(random(5)),soma;
  soma = int(random(1,6));
  if(eixo[i] + soma <50)
    eixo[i] += soma;
  else
    eixo[i] = 50;
}

void desenhaFormas(){
  for(int i =0;i<5;i++){
    int eixo1 = i, eixo2 = i+1;
    if (eixo2>=5)
      eixo2 = 0;
    fill(0,50,max(eixo));
    triangle(x, y,x+p2cx(eixo[eixo1]*5,ang*i), y+p2cy(eixo[eixo1]*5,ang*i),x+p2cx(eixo[eixo2]*5,ang*(i+1)), y+p2cy(eixo[eixo2]*5,ang*(i+1)));
  }
}
