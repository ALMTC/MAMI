PImage img;
void setup(){  
    size(640, 480);
    float t=0, mediaT, somaT = 0; 
    
    img = loadImage("einstein 2 - c 100.jpg");
    
    for(int x=0; x<640; x++){    
        for(int y=0; y<480; y++){
          color cor = img.get(x, y);
          t = red(cor);
          somaT += t; 
        }  
    }
    mediaT = somaT/(640*480);
    println("Media de tons é:", mediaT);
    float v, somaV=0;
    for(int x=0; x<640; x++){    
        for(int y=0; y<480; y++){
          color cor = img.get(x, y);
          t = red(cor);
          v = (t-mediaT)*(t-mediaT);
          somaV += v;
        }  
    }
    float mediaV = somaV/(640*480);
    println("Variaçao: ", mediaV);
    println("Desvio padrão: ", sqrt(mediaV));
}
void draw(){  
  image(img,0,0);
}
