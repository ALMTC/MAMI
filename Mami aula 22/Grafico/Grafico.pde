void setup(){
  size(260, 200);
  linha();
}

void circulo(){
  for (int mes = 1; mes <= 12; mes++){
    int vendas = int(random(11));
    int x = mes*20;
    int y = 200 - vendas*20;
    ellipse(x, y, 10, 10);
    rect(x, y, 16, 200);
    println("Mes: " + mes + " / Vendas: " + vendas);
  }
}

void rectangulo(){
  for (int mes = 1; mes <= 12; mes++){
    int vendas = int(random(11));
    int x = mes*20;
    int y = 200 - vendas*20;
    rect(x, y, 16, 200);
    println("Mes: " + mes + " / Vendas: " + vendas);
  }
}

void linha(){
  int x_anterior = 0;
  int y_anterior = 200;
  for (int mes = 1; mes <= 12; mes++){
    int vendas = int(random(11));
    int x = mes * 20;
    int y = 200 - vendas * 20;
    if (mes > 1)
      line(x, y, x_anterior, y_anterior);
    x_anterior = x;
    y_anterior = y;
    println("Mes: " + mes + " / Vendas: " + vendas);
  }
}

void quadrado(){
  noStroke();
  fill(255,0,0);
  int x_anterior = 0;
  int y_anterior = 200;
  for (int mes = 1; mes <= 12; mes++){
    int vendas = int(random(11));
    int x = mes * 20;
    int y = 200 - vendas * 20;
    if (mes > 1)
      quad(x,200,x, y, x_anterior, y_anterior, x_anterior,200);
    x_anterior = x;
    y_anterior = y;
    println("Mes: " + mes + " / Vendas: " + vendas);
  }
}
