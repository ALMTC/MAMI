void setup(){
  size(200,200p);
  for (int x = 0; x<5; x++)
    for (int y = 0; y<5; y++){
      ellipse(x*20+10,y*20+10,20,20);
      println(x*20,y*20);
    }
}
