boolean si= false, j=false, i=false, c=false, l=false, historiaon=true, mapa1off=true;
float xc=135,yc=300,xr=120,yr=160,xb=500,yb=500;
void interfaz()
{
  if (si == false) {
    textFont(letra1, 50);
    image(fondo, 0, 0, 920, 620);
    fill(224, 146, 61);
    fill(198, 126, 48);
    image(tv, 230, 240, 450, 350);
    fill(0);
    text("   CARTOON  NIGTHMARE", x-242, y+10);
    fill(255);
    text("   CARTOON  NIGTHMARE", x-250, y);
    image(restEdad, 20, 480, 90, 100);
    image(genero, 80, 440, 180, 180);
  }
}
void accion()
{
  textFont(letra, 30);
  if (si==false)
  {
    float r=255, g=255, b=255;
    fill(r, g, b);
    text("JUGAR", 400, 250);
    noStroke();
    rect(388, 256, 125, 4);
    text("INSTRUCCIONES", 330, 310);
    rect(320, 315, 280, 4);
    textFont(letra, 25);
    text("<< Créditos >>", 700, 550);
    textFont(letra, 30);
    if ((mouseX >=386) && (mouseX<=513) && (mouseY>=227) && (mouseY<=259))      //Letrero Jugar
    {
      r=139;
      g=25;
      b=139;
      image(fondo2, 0, 0, 910, 610);
      fill(r, g, b);
      text("JUGAR", 400, 250);
      rect(388, 256, 125, 4);
      textFont(letra1, 50);
      image(tv, 230, 240, 450, 350);
      image(niñoint, 310, 410, 180, 180);
      fill(7, 29, 147);
      text("   CARTOON  NIGTHMARE", x-242, y+10);
      fill(255);
      text("   CARTOON  NIGTHMARE", x-250, y);

      if (mousePressed) {      //Click en jugar
        j = true;
        si = true;
      }
    }
    if ((mouseX >=318) && (mouseX<=600) && (mouseY>=288) && (mouseY<=320))      //Letrero Instrucciones
    {
      r=139;
      g=25;
      b=139;
      fill(r, g, b);
      text("INSTRUCCIONES", 330, 310);
      rect(320, 315, 280, 4);
      if (mousePressed) {
        i  =  true;
        si = true;
      }
    }
    if ((mouseX>= 737) &&(mouseX<=826) && (mouseY>=528) && (mouseY<=550))
    {
      textFont(letra, 25);
      r=139;
      g=25;
      b=139;
      fill(r, g, b);
      text("<< Créditos >>", 700, 550);
      if (mousePressed)c=true;
    }
  }
  if (j==true) {      //JUGAR ON - comienzo historia
    if (historiaon==true) {
      historiaP1();
    }
    historiaP1();
    if (key=='a'|| key=='A') {
      l = true;
      h1=false;
      background(0);
    }
    if (l==true)
    {
      if (mapa1off==true) {
        pushMatrix();
        translate(460, 300);
        image(mapa1, 0, 0, 1000, 700);      //Mapa juego
        image(tv, 250, -110, 50, 50);
        popMatrix();
        mapa1();
        jugador();
      }
      if (z==false)historiaP2();
    }
  }
  if (i==true)      // i == Variable Booleana para las instrucciones
  {
    background(0);
    textFont(letra1, 30);
    fill(255);
    text("Movimiento Personaje", 500, 60);
    text("COMBATE!", 120, 80);
    textFont(letra1, 20);
    fill(250,0,0);
    text("Esquiva o muere!", 130, 110);
    fill(255);
    text("Esquiva todo lo que te lancen!", 80, 470);
    text("muevete con las flechas", 115, 500);
    text("UP", 640, 155);
    text("LEFT", 510, 330);
    text("RIGTH", 760, 330);
    text("DOWN", 620, 340);
    image(hqui, 390, 10);
    image(teclas, 560, 145, 200, 200);
    image(harri, 615, 65);
    image(hab, 615, 330);
    image(hizq, 490, 230);
    image(hder, 740, 230);
    fill(255);
    rect(90, 140, 250, 300);      //Rectangulo movimiento
    stroke(40);
    fill(0);
    rect(80, 520, 130, 50);
    fill(#E84646);
    ellipse(xins, yins, 50, 50);      //Circulo ROJO prueba
    fill(0);
    text("J", xins-3, yins+5);
    fill(#D80202);
    rect(xr, yr, 10, 30);
    rect(xr+180, yr, 10, 30);
    rect(xr+90, yr, 10, 30);
    fill(#180AC1);
    ellipse(xc, yc, 20, 20);
    ellipse(xc+120, yc, 20, 20);
    fill(255);
    yr+=3;
    yc+=3;
  fill(#625B5B);      //Barra ATAQUE!
  rect(xb+15,yb-35,260,110);      //gris
  fill(#810510);
  rect(xb+20,yb-30,250,100);
  fill(250);
  text("ATAQUE!",600,425);
  text("Presiona z para atacar, en el medio hará más daño",410,450);
  fill(0);
  ellipse(xb+145,yb+20,240,100);
  fill(#BBFC7F);
  ellipse(xb+145,yb+20,230,90);      //verde
  rect(800,460,20,20);
   fill(#E8F02C);
   ellipse(xb+145,yb+20,130,90);      //amarillo
   rect(800,500,20,20);
  fill(#F7464C);
  ellipse(xb+145,yb+20,50,90);      //rojo
  rect(800,540,20,20);
  fill(250);
  text(" = -5 ",820,475);
  text(" = -10 ",820,515);
  text(" = -20 ",820,555);
  fill(0);
  fill(250);
  for (int i=0; i<=200; i+=10){
    pushMatrix();
    strokeWeight(5);
    line(550+i,510,550+i,530);      //Finalizacion barra ataque
    popMatrix();
  }
  strokeWeight(1);
  fill(250);
    if(yc>420){
      yc=150;
      xc=random(100,180);
    }
    if(yr>420){
      yr=150;
      xr=random(100,150);
    }
    text("VOLVER", 100, 550);
    if (keyPressed ) {    //Movimiento j1 prueba
      if (keyCode==LEFT) {
        xins -= vel;
        if (xins<115) {
          xins=115;
        }
      } else if (keyCode==RIGHT) {
        xins += vel;
        if (xins>305) {
          xins=315;
        }
      } else if (keyCode==UP) {
        yins -= vel;
        if (yins<165) {
          yins=165;
        }
      } else if (keyCode==DOWN) {
        yins += vel;
        if (yins>415) {
          yins=415;
        }
      }
    }
    //}
    if (mouseX>=82 && mouseY >= 520 && mouseX<=210 && mouseY <= 569) {      //instruccion para volver
      fill(#CE2A2A);
      text("VOLVER", 100, 550);
      if (mousePressed) {
        si = false;
        i = false;
      }
    }
  }
  if (c==true)
  {
    float r=255, g=255, b=255;
    textFont(letra, 25);
    r=139;
    g=25;
    b=139;
    fill(r, g, b);
    text("<< Créditos >>", 700, 550);
    background(0);
    creditos();
  }
}
