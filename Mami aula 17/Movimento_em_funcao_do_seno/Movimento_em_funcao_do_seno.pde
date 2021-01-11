void setup(){
  size(800, 600);
  noStroke();
}
float a=0,px;
void draw(){
  background(118);
  px = 375*(sin(a)+1);
  ellipse(25+px,300,50,50);
  a+= 0.1;
}
