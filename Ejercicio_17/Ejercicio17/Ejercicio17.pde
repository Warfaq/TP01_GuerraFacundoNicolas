PVector linkPos, tesoroPos; // Posición de Link y caja de tesoro

public void setup() {
  size(500, 500);
// Inicializamos las posiciones de Link y la caja de tesoro
  linkPos = new PVector(mouseX, mouseY);
  tesoroPos = new PVector(200, 400);
}

public void draw() {
  background(255);
  translate(mouseX , mouseY);
  // Dibujamos a Link y la caja de tesoro
  ellipse(0,0, 20, 20); //Link
  fill(0,0,0);

 // rect(tesoroPos.x, tesoroPos.y, 30, 30);  //Caja de tesoro
  
  // Calculamos la distancia entre Link y la caja de tesoro
 // float distancia = sqrt(pow(a, 2) + pow(b, 2));;
}
