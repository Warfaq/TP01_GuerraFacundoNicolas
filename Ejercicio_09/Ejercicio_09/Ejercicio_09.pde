int x,y;
boolean resultado,expr1, expr2;
x=6;
y=8;
expr1= !(x<5);
expr2= !(y>=7);
resultado= !(x<5) && !(y>=7);
println("Expresion 1 es:",expr1, "y Expresion2 es:",expr2);
println("Resultado es:",resultado);
