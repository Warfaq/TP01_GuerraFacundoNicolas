String nombre = ""; // Variable para almacenar el nombre
boolean nombreConfirmado = false; // Variable para confirmar
void setup() {
  size(400, 200);
  textSize(30);
}
void draw() {
  background(255);
  fill(0);
  textAlign(CENTER, CENTER);
  if (nombreConfirmado) { // Si se ha ingresado el nombre
    text("Hola " + nombre, width/2, height/2); // Muestra el saludo con el nombre ingresado
  } else { //Si no
    text("Escribe tu nombre:", width/2, height/2); // Ingrese el nombre
  }
}
void keyPressed() {
  if (key != '\n') { // Si la tecla presionada no es Enter ('\n')
    nombre += key; // Agrega la tecla presionada al nombre
  } else { // Si la tecla es Enter ('\n')
    println("Hola " + nombre); // Imprime el saludo en la consola
    nombreConfirmado = true; // Indica que se ha confirmado el nombre
  }
}
