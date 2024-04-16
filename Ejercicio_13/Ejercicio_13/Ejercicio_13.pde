int base = 10; // Base del rectángulo
int altura = 5; // Altura del rectángulo
void setup() {
  int perimetro = 2*base + 2*altura;//Calcula el perímetro
  int area = base * altura;//Calcula el área
  println("Perímetro del rectángulo: " + perimetro);
  println("Área del rectángulo: " + area);
}
