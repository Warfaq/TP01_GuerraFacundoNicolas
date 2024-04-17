int y1,x1;
PVector posicionElipse;
void setup() {
  size(600, 600);
  int diametro = 50;
  int espacioCirculo=20;
 posicionElipse = new PVector(diametro/2,100);
  y1=0;
  x1=diametro/2;
  do{
  stroke(0,0,255);
  line(0,y1,width,y1);
  y1 =y1 + 100;
   println(y1);
   posicionElipse.x = diametro/2; //reinicia la linea de circulos
    do{
     fill(random(255), random(255), random(255));
     ellipse(posicionElipse.x,y1-diametro/2,diametro,diametro);
     posicionElipse.x += diametro + espacioCirculo; 
    }while (posicionElipse.x+diametro < width);
  }while (y1<=height);
  //println(y1);

}
