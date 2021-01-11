int i=0, Timagens = 11;
PImage[] imagens = new PImage[Timagens];

int count = 0;

void setup() {
  size(824, 548);
  for (int i=0; i < Timagens; i++) {
    imagens[i] = loadImage("img"+str(i+1)+".png");
  }
  criaImagem();
  println("numero de vezes que mediana foi usada:",count);
}

void criaImagem(){
  PImage imgFinal = createImage(824, 548, RGB);
  int[] cores = new int[Timagens];
  for(int x = 0;x<824;x++)
    for(int y = 0;y<548;y++){
      for(int i=0;i<Timagens;i++){
        color cor = imagens[i].get(x,y);
        cores[i] = cor2Int(cor);
      }
      int med = moda(cores,x,y);
      imgFinal.set(x, y, int2Cor(med));
    }
  image(imgFinal,0,0);
}

int cor2Int (color cor) {
  float b = blue(cor) * 65536 ;
  float g = green(cor) * 256 ;
  float r = red(cor);
  return int(b + g + r);
}

color int2Cor(int cor) {
  int b = cor/65536;
  int g = (cor - b * 65536)/ 256;
  int r = cor - (b * 65536) - (g * 256);
  return color(r, g, b);
}

int mediana(int[] cores){
  cores = sort(cores);
  int mediana = cores[Timagens/2];
  return mediana;
}

int moda(int[] elementos, int x, int y) {
  int qtdModa = 0;
  int numModa=0;
  int contador = 0;
  elementos = sort(elementos);
  for (int i = 0; i < (elementos.length - 1); i++) {
    if (elementos[i] == elementos[i+1])
      contador++;
    else
      contador = 0;
    if (contador > qtdModa) {
      qtdModa = contador;
      numModa = elementos[i];
    }
  }
  if(numModa <=131332){
    count++;
    return mediana(elementos);}
  else
    return numModa;
}
