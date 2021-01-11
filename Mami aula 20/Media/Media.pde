int tamanhoV = 30;
int[] posX = new int[tamanhoV];
int[] posY = new int[tamanhoV];
int cont;
int funcX(int[] list){  
  int somaX = 0;  
  for(int i=0; i<tamanhoV; i++)    
    somaX = somaX + list[i];  
  return int(somaX/tamanhoV);
}

void setup(){ size(300,300);}

void draw(){  
  background(0);  
  posX[cont % tamanhoV] = mouseX;
  posY[cont % tamanhoV] = mouseY;
  //rect(funcX(posX), funcX(posY), 10, 10);
  for (int i = 0; i<tamanhoV; i++){
    ellipse(posX[i], posY[i], 10, 10);
  }
  cont++;
}
