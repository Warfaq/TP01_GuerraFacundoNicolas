int y1;
void setup() {
  size(600, 600);
  do{
  line(0,y1,width,y1);
  y1 =y1 + 100;
  }while (y1<=height);
  println(y1);
}
