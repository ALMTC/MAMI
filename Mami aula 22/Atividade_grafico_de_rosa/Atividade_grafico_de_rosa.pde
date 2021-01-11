int[] Doencas = new int[12], Machucados = new int[12], Outros = new int[12];

void setup(){
  size(800,800);
  desenhaDiagrama();
}

void geraDados(int[] list){
  for(int i = 0; i < 12; i++){
    list[i] = int(random(100));
  }
}

void exibeDados(){
  geraDados(Doencas);
  geraDados(Machucados);
  geraDados(Outros);
  fill(0);
  text("Mês", 10,20);
  fill(30,144,255);
  rect(150,10, 10,10);
  text("infecção", 165, 20);
  fill(220,20,60);
  rect(220,10, 10,10);
  text("Machucados", 235, 20);
  fill(128,128,128);
  rect(310,10, 10,10);
  text("Outros", 325, 20);
  for(int i = 0; i < 12; i++){
    fill(0);
    text(i+1, 10,30+i*10);
    fill(30,144,255);
    text(Doencas[i], 40,30+i*10);
    fill(220,20,60);
    text(Machucados[i], 70,30+i*10);
    fill(128,128,128);
    text(Outros[i], 100,30+i*10);
  }
}

void desenhaDiagrama(){
  background(255);
  exibeDados();
  float angulo = 2 * PI / 12.0;
  float angulo_anterior = 0;
  for(int i = 0; i<12; i++){
    int M1 = Doencas[i];
    int M2 = Machucados[i];
    int M3 = Outros[i];
    int Raio1 = M1 + M2 + M3;
    int Raio2 = M2 + M3;
    int Raio3 = M3;
    fill(30,144,255);
    arc(width/2, height/2, Raio1*2, Raio1*2, angulo_anterior, angulo*(i+1), PIE);
    fill(220,20,60);
    arc(width/2, height/2, Raio2*2, Raio2*2, angulo_anterior, angulo*(i+1), PIE);
    fill(128,128,128);
    arc(width/2, height/2, Raio3*2, Raio3*2, angulo_anterior, angulo*(i+1), PIE);
    angulo_anterior = angulo*(i+1);
  }
}
