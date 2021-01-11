void setup(){
  size(300,300);
  rectMode(CENTER);
  rect(width/2, height/2, 100,100);
}

void draw(){
  if(mouseX >= 100 && mouseX <= 200 && mouseY >= 100 && mouseY <= 200 )
    println("Está dentroao");
}
