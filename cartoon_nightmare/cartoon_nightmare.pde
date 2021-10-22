
import ddf.minim.*;
import sprites.*;
import sprites.maths.*;
import sprites.utils.*;

Minim minim;
AudioPlayer musicafondo;

PFont letra, letra1, letraC;
PImage fondo, tv, fondo2, niñoint, mapa1, portal, teclas, hqui, hizq, hder, hab, harri, fondop1, mordecai, restEdad, genero, mapa2, hsentado, consola,rey, sonidon, sonidoff, mordecaimapa, bosque ;
float yC=80, x=350, y=100, tiempoFrames, xJ=140, yJ=550, vel = 5, xb=500,yb=500;
int jugadorFrames, xw=30, yw=500, xins = 210, yins = 300, xj1=500, yj1=300; //x=270
boolean z=false, botonoff=false, botonon=true;
Sprite MovJD, MovJQ, MovJI, MovJAB, MovJAR, Rey;
StopWatch reloj; //reloj, contador para llevar el tiempo
void setup()
{
  size(900, 600);
  letra = loadFont("letra1.vlw");
  letra1 = loadFont("letra2.vlw");
  letraC = loadFont("letraCreditos.vlw");
  fondo = loadImage("fondoint.jpg");
  fondo2 = loadImage("fondo2.png");
  bosque = loadImage("bosque.jpg");
  mordecai = loadImage("mordecaipelea.png");
  reloj = new StopWatch();
  MovJD = new Sprite(this, "HermanoM.png", 14, 1, 0);
  MovJD.setFrameSequence(1, 3, 0.1); //Frame movimiento a la derecha
  MovJQ = new Sprite(this, "HermanoM.png", 14, 1, 0);
  MovJQ.setFrameSequence(0, 0, 0);
  MovJI = new Sprite(this, "HermanoM.png", 14, 1, 0);
  MovJI.setFrameSequence(5, 7, 0.1);
  MovJAB = new Sprite(this, "HermanoM.png", 14, 1, 0);
  MovJAB.setFrameSequence(9, 10, 0.1);
  MovJAR = new Sprite(this, "HermanoM.png", 14, 1, 0);
  MovJAR.setFrameSequence(12, 13, 0.1);
  Rey = new Sprite(this,"sprite_reyhelado.png",3,1,0);
  Rey.setFrameSequence(0,2,0.4);
  niñoint = loadImage("niñoint.png");
  mapa1 = loadImage("mapa11.png");
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
  //musicafondo.loop();
  mapa2 = loadImage("mapa2.png");
  hsentado = loadImage("hsentado.png");
  consola = loadImage("consola.png");
  rey = loadImage("rey.png");
  sonidon = loadImage("sonidonn.png");
  sonidoff = loadImage("sonidoff.png");
  mordecaimapa= loadImage("modecaimapa.png");
}
void draw()
{
  //ataque1();
  interfaz();
  accion();
  mapa2();
  //sonido();
  //print(mouseX, mouseY);
}
void sonido()
{
  if(botonoff==false)
  {
    musicafondo.play();
    image(sonidon,10,0,50,50);
    if(mouseX>=20 && mouseX<=49 && mouseY>=9 && mouseY<=36 && mousePressed)
    {
        botonoff=true;
    }
  }
  if(botonoff==true)
  {
    image(sonidoff,10,35,50,50);
    musicafondo.pause();
    if(mouseX>=18 && mouseX<=49 && mouseY>=43 && mouseY<=73 )
    {
      if(mousePressed)botonoff=false;
    }
  }
}
