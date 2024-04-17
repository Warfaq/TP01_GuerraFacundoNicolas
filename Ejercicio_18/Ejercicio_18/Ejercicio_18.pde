float a, b, c; // Coeficientes de la ecuación cuadrática
int resultado;
// Definir los coeficientes de la ecuación cuadrática 
public void setup() {
  size(400, 200);
 println ("Ecuacion cuadratica: ax^2 + bx + c");
  a = 1;
  b = -5;
  c = 6;
   println ("a=",a,"b=",b,"c=",c);
 float discriminante = pow(b,2)- 4*a*c; // Calcular el discriminante
 if (discriminante >= 1){
    resultado=1;
 }else if(discriminante==0){
    resultado=0;
 }
  switch(resultado) {
    case 1: // Discriminante positivo
      float x1 = (-b + sqrt(discriminante)) / (2*a); // Calcular la primera raíz
      float x2 = (-b - sqrt(discriminante)) / (2*a); // Calcular la segunda raíz
      println("Las raíces son:" + x1 + "y" + x2);
      break;
    case 0: // Discriminante igual a cero
      float x = -b / (2*a); // Calcular la única raíz
      println("La raíz es: " + x);
      break;
    default: // Discriminante negativo
      println("Las raíces son imaginarias");
      break;
  }
}
