PImage imgParado, imgMartelando;

void setup(){
  size(600,600);
  imgParado = loadImage("parado.png");
  imgMartelando = loadImage("martelando.png");
}

// Estados possíveis
final int PARADO = 0;
final int MARTELANDO = 1;

//Estado inicial
int estadoMario = PARADO;

//Loop Principal
void draw(){
  MostraMario(estadoMario);
  MEF();
  println(estadoMario);
}

//Maquina de estados finitos
void MEF(){
  if(keyPressed == true){
    if(key == ' '){
       estadoMario = MARTELANDO; 
    }
  }
  else{
    estadoMario = PARADO;
  }
}

//represenbtação grafica
void MostraMario(int estado){
  background(255);
  if(estado == PARADO)
     image(imgParado,150,150);
  else if(estado == MARTELANDO)
     image(imgMartelando, 150,150);
}
