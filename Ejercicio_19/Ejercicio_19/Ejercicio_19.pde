float x1, y1, x2, y2; // Coordenadas iniciales de la línea
float posElipseX, posElipseY; // Coordenadas del centro de la elipse
float moverLinea = 1; // Dirección de movimiento de la línea
float moverElipse = 1;  // Dirección de movimiento del elipse

public void setup() {
  size(400, 400);
  x1 = 0; //Coordenada inicial en el centro horizontal del lienzo
  y1 = 40; //Coordenada inicial en la parte superior del lienzo
  x2 = width;  //La línea recorre el ancho
  y2 = y1;     //Es una linea horizontal
  posElipseX = (x2-x1)/2; //La elipse se encuentra centro de la linea
  posElipseY = y1 + 40; //La elipse está a 40 píxeles por debajo del punto medio de la línea
}
public void draw() {
  background(0);
  stroke(255);
  line(x1, y1, x2, y2); //dibujo la linea
  fill(0,255,0);
  ellipse(posElipseX, posElipseY, 80, 80); //dibujo elipse
  
  y1 += moverLinea; //Mover la linea hacia abajo
  y2 += moverLinea;  
  posElipseY += moverElipse; //Mover la elipse hacia abajo
  
  if (y1 > height || y1 < 0) {  // Verifica si la línea ha superado los límites del lienzo
    moverLinea *= -1; // Invierte la dirección de la línea
    
    if(posElipseY >= y1) {
      posElipseY = y1-40;  //La elipse se coloca 40 píxeles por arriba de la línea
      moverElipse *= -1;   //Invierte la dirección de la elipse
     }else{
       posElipseY = y1+40;  //La elipse se coloca 40 píxeles por debajo de la línea
       moverElipse *= -1;   //Invierte la dirección de la elipse
    }
  }
}
