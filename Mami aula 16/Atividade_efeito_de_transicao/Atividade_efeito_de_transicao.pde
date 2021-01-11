PImage img1, img2, imgR;
int count=0, IMAGEMATUAL=1, MODO = 3;
boolean ALTERAR = false;

void setup(){
  size(675,1000);
  img1 = loadImage("img1.jpg");
  img2 = loadImage("img2.jpg");
  imgR = loadImage("img1.jpg");
}

void draw(){
  image(imgR,0,0);
  if(ALTERAR){
    println(MODO, count);
    count+=5;
    if(MODO==0)
      ED(count);
    else if(MODO==1)
      DE(count);
    else if(MODO==2)
      CB(count);
    else if(MODO==3)
      BC(count);
    reseta();
  }
}

void mousePressed(){
  if(!ALTERAR){
    ALTERAR = true;
    MODO ++;
    if(MODO>3)
      MODO=0;
  }
}

void reseta(){
  if(MODO==0 || MODO==1){
    if(count>=680){
      count = 0;
      ALTERAR = false;
      if (IMAGEMATUAL == 1){
        IMAGEMATUAL = 2;}
      else{
        IMAGEMATUAL = 1;}
    }
  }
  if(MODO==2 || MODO==3){
    if(count>=1004){
      count = 0;
      ALTERAR = false;
      if (IMAGEMATUAL == 1)
        IMAGEMATUAL = 2;
      else
        IMAGEMATUAL = 1;
    }
  }
}

void ED(int n){
  for(int x=0; x<n; x++)
    for(int y=0; y<1000; y++){
      color cor;
      if(IMAGEMATUAL == 1)
        cor = img2.get(x,y);
      else
        cor = img1.get(x,y);
      if(x+5>=n)
        cor = color(255,0,0);
      imgR.set(x,y,cor);
    }
}

void DE(int n){
  for(int x=674; x>674-n; x--)
    for(int y=0; y<1000; y++){
      color cor;
      if(IMAGEMATUAL == 1)
        cor = img2.get(x,y);
      else
        cor = img1.get(x,y);
      if(x-5<=674-n)
        cor = color(255,0,0);
      imgR.set(x,y,cor);
    }
}

void CB(int n){
  for(int x=0; x<675; x++)
    for(int y=0; y<n; y++){
      color cor;
      if(IMAGEMATUAL == 1)
        cor = img2.get(x,y);
      else
        cor = img1.get(x,y);
      if(y+5>=n)
        cor = color(255,0,0);
      imgR.set(x,y,cor);
    }
}

void BC(int n){
  for(int x=0; x<675; x++)
    for(int y=999; y>999-n; y--){
      color cor;
      if(IMAGEMATUAL == 1)
        cor = img2.get(x,y);
      else
        cor = img1.get(x,y);
      if(y-5<=999-n)
        cor = color(255,0,0);
      imgR.set(x,y,cor);
    }
}
