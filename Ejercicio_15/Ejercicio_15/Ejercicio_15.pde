float num1 = 0;
float num2 = 0;

void setup() {
  size(400, 200);
  textAlign(CENTER);
  textSize(20);
  text("Ingrese dos números:", width/2, 30);
}
void draw() {
  background(0);
  textAlign(CENTER);
  textSize(20);
  text("Ingrese dos números:", width/2, 30);
  text("Primer número: " + num1, width/2, 70);
  text("Segundo número: " + num2, width/2, 100);
}

void keyPressed() {
  if (key >= '0' && key <= '9') {
    if (num1 == 0) {
      num1 = float(key - '0');
    } else if (num2 == 0) {
      num2 = float(key - '0');
    }
  }
  if (keyCode == ENTER) {
    float suma = num1 + num2;
    float resta = num1 - num2;
    float multiplicacion = num1 * num2;
    float division = num2 != 0 ? num1 / num2 : Float.POSITIVE_INFINITY;
    println("Suma: " + suma);
    println("Resta: " + resta);
    println("Multiplicación: " + multiplicacion);
    println("División: " + division);
  }
}
