PVector linkPos, tesoroPos; // Posición de Link y caja de tesoro
boolean tesoroObtenido = false;
public void setup() {
  size(500, 500);
 //Almacenar las Posiciones iniciales de los objetos
}
public void draw() {
  background(255);
  // Inicializamos las posiciones de Link y la caja de tesoro
  linkPos = new PVector(mouseX, mouseY);
  tesoroPos = new PVector(400, 400);
  // Dibujamos a Link
  ellipse(linkPos.x,linkPos.y, 20, 20); //Link
  fill(0,0,0);
  
  if (tesoroObtenido == false){
   // Calculamos la distancia entre Link y la caja de tesoro
  float distancia = sqrt(pow((linkPos.x-tesoroPos.x), 2) + pow((linkPos.y-tesoroPos.y), 2));
  println(distancia);
  
    if (distancia > 50) {
      fill(0, 0, 255); // Azul
      rect(tesoroPos.x, tesoroPos.y, 30, 30);//Caja de tesoro
    }else{
     tesoroObtenido = true;
     }
  }
}
