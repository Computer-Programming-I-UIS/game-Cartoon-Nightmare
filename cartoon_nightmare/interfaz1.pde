boolean si= false, j=false, i=false, c=false, l=false;
void movimiento1()
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
  if (j==true) {      //comienzo historia
    historiaP1();
      if(key=='a')l = true;
      if(l==true)
      {
        pushMatrix();
        translate(460,300);
        image(mapa1,0,0,1000,700);
        image(tv,250,-110,50,50);
        popMatrix();
        mapa1();
        jugador();
        if(z==false)historiaP2(); 
      }
  }
  if (i==true)      // i == Variable Booleana para las instrucciones
  {
    background(0);
    textFont(letra1, 30);
    fill(255);
    text("Movimiento Personaje", 450, 100);
    text("COMBATE!", 120, 100);
    textFont(letra1, 20);
    text("Esquiva todo lo que te lancen!", 80, 470);
    text("muevete con las flechas", 115, 500);
    text("UP", 605, 250);
    text("LEFT", 440, 430);
    text("RIGTH", 740, 430);
    text("DOWN", 590, 460);
    image(hqui, 325, 50);
    image(teclas, 500, 225, 250, 250);
    image(harri, 580, 150);
    image(hab, 590, 460);
    image(hizq, 420, 330);
    image(hder, 740, 330);
    fill(255);
    rect(90, 140, 250, 300);      //Rectangulo movimiento
    stroke(40);
    fill(0);
    rect(80, 520, 130, 50);
    fill(#E84646);
    ellipse(xins, yins, 50, 50);      //Circulo ROJO prueba
    fill(#D80202);
    rect(120, 160, 10, 30);
    rect(280, 180, 10, 30);
    rect(180, 190, 10, 30);
    rect(230, 165, 10, 30);
    fill(#180AC1);
    ellipse(135, 230, 20, 20);
    ellipse(260, 250, 20, 20);
    fill(255);
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
