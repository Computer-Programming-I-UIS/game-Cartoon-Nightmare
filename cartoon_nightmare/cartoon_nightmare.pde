import sprites.*;
import sprites.maths.*;
import sprites.utils.*;

PFont letra, letra1; PImage fondo, tv, fondo2, niñoint, mapa1, portal, teclas;
float x=350, y=100, tiempoFrames, xJ=200, yJ=200; int jugadorFrames, xw=30, yw=500; //x=270
Sprite MovJD, MovJQ, MovJI, MovJAB,MovJAR; StopWatch reloj; //reloj, contador para llevar el tiempo
void setup()
{
  size(900, 600);
  letra = loadFont("letra1.vlw");
  letra1 = loadFont("letra2.vlw");
  fondo = loadImage("fondoint.jpg");
  fondo2 = loadImage("fondo2.png");
  reloj = new StopWatch();
  MovJD = new Sprite(this,"HermanoM.png",14,1,0); 
  MovJD.setFrameSequence(1,3,0.1); //Frame movimiento a la derecha
  MovJQ = new Sprite(this,"HermanoM.png",14,1,0);
  MovJQ.setFrameSequence(0,0,0);
  MovJI = new Sprite(this,"HermanoM.png",14,1,0);
  MovJI.setFrameSequence(5,7,0.1);
  MovJAB = new Sprite(this,"HermanoM.png",14,1,0);
  MovJAB.setFrameSequence(9,10,0.1);
  MovJAR = new Sprite(this,"HermanoM.png",14,1,0);
  MovJAR.setFrameSequence(12,13,0.1);
  niñoint = loadImage("niñoint.png");
  mapa1 = loadImage("mapa11.jpeg");
  tv = loadImage("tv.png"); 
  portal = loadImage("portal.png");
  teclas = loadImage("teclas.png");
}
void draw()
{
  movimiento1();
  accion();
  //combate();
  //print(mouseY);
  
}
