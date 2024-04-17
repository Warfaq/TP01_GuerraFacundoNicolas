PVector coordenadasRect; //Vector
int ancho, alto, distEsp;
public void setup(){ //Configuraciones
  size (440,420); //Lienzo
 distEsp = 20; 
 ancho= 40;
 alto= 20;
  coordenadasRect = new PVector (distEsp,distEsp); //Valores X,Y
}

public void dibujarRectangulo(){
  //Dibujar rectangulo mientras nos de el tamaño del Lienzo
  
  //Mientras X sea menor AnchoLienzo  
  for(float x=coordenadasRect.x; x<width ; x+=(ancho+distEsp)){ 
     //Mientras Y sea menor AltoLienzo
     for(float y=coordenadasRect.y; y<height ; y+=(alto+distEsp)){ 
        fill(255,0,0); //Relleno de color rectangulo
        rect(x , y, ancho, alto);//Dibujo Rectangulo
     }
  }
}
public void draw(){
  background(244,227,169);
  dibujarRectangulo(); //llama a la funcion dibujo Rectangulo
}
