
void setup() {
  size(800, 600);
  noStroke();
}

void draw() {
  fill(0, 255, 255);
  rect(0, 0, width, 0.2*height);
  fill(255, 0, 255);
  rect(0, 0.9*height, width, height);
  fill(255, 255, 0);
  rect(0, 0.2*height, 0.3*width, 0.7*height);
  fill(0);
  rect(0.3*width, 0.2*height, 0.7*width, 0.7*height);
  textSize(12);
  if (mouseY <= 0.2 * height){
    fill(0);
    text("cabeçalho", mouseX, mouseY);
  }
  if (mouseY >= 0.9 * height){
    fill(0);
    text("rodapé", mouseX, mouseY);
  }
  if ((mouseY >= 0.2 * height && mouseY <= 0.9 * height) && mouseX <= 0.3 * width){
    fill(0);
    text("menu", mouseX, mouseY);
  }
  if(mouseX >= 0.3 * width && (mouseY >= 0.2 * height && mouseY <= 0.9 * height)){
    fill(255);
    text("Conteúdo", mouseX, mouseY);
  }
}
