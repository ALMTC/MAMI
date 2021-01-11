int n=30;
float ang =dividePizza(n);
void setup() {
  size(600, 600);
  for (int i=0; i<n; i++) {
    if(i%2==0)
      fill(26,161,171);
    else
      fill(250,239,155);
    arc(300, 300, 300, 300, i*ang, (i+1)*ang,PIE);
  }
}
float dividePizza(int n) {
  return 2*PI/n;
}
