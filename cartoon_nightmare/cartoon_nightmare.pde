import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import sprites.*;
import sprites.maths.*;
import sprites.utils.*;

Minim minim;
AudioPlayer musicafondo;

PFont letra, letra1, letraC; PImage fondo, tv, fondo2, niñoint, mapa1, portal, teclas, hqui,hizq,hder,hab,harri,fondop1,mordecai, restEdad, genero;
float yC=80 ,x=350, y=100, tiempoFrames, xJ=140, yJ=550, vel = 5; int jugadorFrames, xw=30, yw=500,xins = 210, yins = 300, xj1=500, yj1=300; //x=270
boolean z=false;
Sprite MovJD, MovJQ, MovJI, MovJAB,MovJAR; StopWatch reloj; //reloj, contador para llevar el tiempo
void setup()
{
  size(900, 600);
  letra = loadFont("letra1.vlw");
  letra1 = loadFont("letra2.vlw");
  letraC = loadFont("letraCreditos.vlw");
  fondo = loadImage("fondoint.jpg");
  fondo2 = loadImage("fondo2.png");
  mordecai = loadImage("mordecaipelea.png");
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
  hqui = loadImage("hqui.png");
  hizq = loadImage("hizq.png");
  hder = loadImage("hder.png");
  hab = loadImage("hab.png");
  harri = loadImage("harri.png");
  restEdad = loadImage("restriccionEdad.png");
  genero = loadImage("genero.png");
  minim = new Minim(this);
  musicafondo = minim.loadFile("musicafondo.mp3");
  musicafondo.loop();
}
void draw()
{
  movimiento1();
  accion();
  
}
