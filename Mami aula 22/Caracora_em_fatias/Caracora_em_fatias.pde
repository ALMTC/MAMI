void setup(){
  size(640, 480);
  //caracoroa1();
  //caracoroaPercent();
  //caracoroaAnggraus();
  //caracoroaAngRadians();
  caracoroaMostraFatia();
}

void caracoroa1(){
  int sorteado, caras = 0, coroas = 0;
  for(int i = 0; i < 5; i++) {
    sorteado = (int(random(2)));
    if (sorteado == 0)
      caras++;
    else
      coroas++;  
  }
  println("Caras: ", caras);
  println("Coroas: ", coroas);
}

void caracoroaPercent(){
  int sorteado, caras = 0;
  for(int i = 0; i < 5; i++) {
    sorteado = (int(random(2)));
    if (sorteado == 0)
      caras++;
  }
  println("Caras:", caras);
  println("Coroas:", 5-caras);
  println("Porcentagem de Caras: ", caras*100 / 5.0 + "%");
}

void caracoroaAnggraus(){
  int sorteado, caras = 0;
  for(int i = 0; i < 5; i++) {
    sorteado = (int(random(2)));
    if (sorteado == 0)
      caras++;
  }
  println("Caras:", caras);
  println("Coroas:", 5-caras);
  println("Angulo de Caras: ", caras / 5.0 * 360);
}

void caracoroaAngRadians(){
  int sorteado, caras = 0;
  for(int i = 0; i < 5; i++) {
    sorteado = (int(random(2)));
    if (sorteado == 0)
      caras++;
  }
  println("Caras:", caras);
  println("Coroas:", 5-caras);
  println("Angulo de Caras: ", caras / 5.0 * 2 * PI);
}

void caracoroaMostraFatia(){
  int n = 50;
  int sorteado, caras = 0;
  float anguloCaras;
  for(int i = 0; i < n; i++) {
    sorteado = (int(random(2)));
    if (sorteado == 0)
    caras++;
  }
  anguloCaras = 2 * PI * caras / n;
  println("Caras:", caras);
  println("Coroas:", n-caras);
  println("Angulo de Caras: ", anguloCaras);
  ellipse(320, 240, 240, 240);
  fill(126);
  arc(320, 240, 240, 240, 0, anguloCaras, PIE);
}
