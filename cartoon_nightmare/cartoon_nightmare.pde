PFont letra, letra1; PImage fondo, tv, fondo2, niñoint, mapa1, portal;
float x=350, y=100; //x=270
void setup()
{
  size(900, 600);
  letra = loadFont("letra1.vlw");
  letra1 = loadFont("letra2.vlw");
  fondo = loadImage("fondoint.jpg");
  fondo2 = loadImage("fondo2.png");
  niñoint = loadImage("niñoint.png");
  mapa1 = loadImage("mapa1.jpeg");
  tv = loadImage("tv.png"); 
  portal = loadImage("portal.png");
}
void draw()
{
  movimiento1();
  accion();
  mapa1();
  //print(mouseY);
  
}
