String nombre= "";
void setup(){
  size (400,400);
  println("Escribe tu nombre:");
}
void keyTyped() {
  nombre = nombre + key;
  println(nombre);
}
void draw() {
  if(keyPressed){
    if((key== '-')||(key== '+')){;
      text("Hola"+nombre,width/2,height/2);
      println ("hola",nombre);
     }
   }
}
