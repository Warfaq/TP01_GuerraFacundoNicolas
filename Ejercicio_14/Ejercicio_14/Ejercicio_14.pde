float cateto1 = 3;
float cateto2 = 4; 
float hipotenusa;
void setup() {
   //Calcula la hipotenusa usando el teorema de Pitágoras
  hipotenusa = sqrt(pow(cateto1,2) + pow(cateto2,2));
  println("Longitud del primer cateto: " + cateto1);
  println("Longitud del segundo cateto: " + cateto2);
  println("Longitud de la hipotenusa: " + hipotenusa);
}
