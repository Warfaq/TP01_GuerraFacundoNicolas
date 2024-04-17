int huella, cthuella;//huella y contrahuella
int x1,x2,y1,y2;

public void setup(){
x1=0;
x2=80;
y1=80;
y2=y1*2;
huella=x1+x2;
cthuella= y2-y1;

size(500,500);
int coordX, coordY;
coordX=0;
coordY=0;
 while(coordX<width || coordY<height){
   dibujarEscalones();
   coordX=x2;
   coordY=y2;
 }
}
  public void dibujarEscalones(){
    stroke(0,255,255);
    line(x1,y1,x2,y1); //huella
    line(x2,y1,x2,y2); //contrahuella
    x1= x1 + huella;
    y1= y1 + cthuella;
    x2= x2 + huella;
    y2= y2 + cthuella;
    fill(255,0,0);
    ellipse(x1,y1-100,15,15);
  } 
 
    
