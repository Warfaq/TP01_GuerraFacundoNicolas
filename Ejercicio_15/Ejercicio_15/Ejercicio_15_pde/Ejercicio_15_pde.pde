String num1String = "";
String num2String = "";
boolean ingresandoNum1 = true; 
void setup() {
  size(400, 200);
  textAlign(CENTER);
  textSize(20);
  text("Ingrese el primer número y presione ENTER:", width/2, 30);
}
void draw() {
  background(0);
  textAlign(CENTER);
  textSize(20);
  if (ingresandoNum1) {
    text("Ingrese el primer número y presione ENTER:", width/2, 30);
    text("Primer número: " + num1String, width/2, 70);
  } else {
    text("Ingrese el segundo número y presione ENTER:", width/2, 30);
    text("Primer número: " + num1String, width/2, 70);
    text("Segundo número: " + num2String, width/2, 100);
  }
}
void keyPressed() {
  if (keyCode >= '0' && keyCode <= '9') {
    if (ingresandoNum1) {
      num1String += key;
    } else {
      num2String += key;
    }
  }
  if (keyCode == ENTER && !num1String.isEmpty()) {
    if (ingresandoNum1) {
      ingresandoNum1 = false;
      num1String = trim(num1String);
    } else if (!num2String.isEmpty()) {
      float num1 = float(num1String);
      float num2 = float(num2String);
      
      float suma = num1 + num2;
      float resta = num1 - num2;
      float multiplicacion = num1 * num2;
      float division = num2 != 0 ? num1 / num2 : Float.POSITIVE_INFINITY; 
      println("Suma: " + suma);
      println("Resta: " + resta);
      println("Multiplicación: " + multiplicacion);
      println("División: " + division);
      num1String = "";
      num2String = "";
      ingresandoNum1 = true;
    }
  }
}
