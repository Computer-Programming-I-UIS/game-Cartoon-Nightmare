boolean q=false;
void jugador() //Uso de la librería sprites
{
  if (q==false) {
    tiempoFrames =(float) reloj.getElapsedTime(); //tiempo transcurrido
    S4P.updateSprites(tiempoFrames);//Actualizar tiempo del sprites

    if (keyPressed==false)      //Estado Quieto
    {
      pushMatrix();
      translate(xJ, yJ);
      MovJQ.draw();
      popMatrix();
    }

    if (keyPressed && (key==CODED))
    {
      if (keyCode ==RIGHT && xJ<850 && yJ<420)      //Movimiento DERECHA
      {
        pushMatrix();
        translate(xJ, yJ);
        MovJD.draw();
        popMatrix();
        xJ+=7;
      } else if (keyPressed && keyCode == RIGHT && xJ<380 && yJ>=420) {
        pushMatrix();
        translate(xJ, yJ);
        MovJD.draw();
        popMatrix();
        xJ+=7;
      } else if (keyPressed && keyCode == RIGHT) {
        pushMatrix();
        translate(xJ, yJ);
        MovJQ.draw();
        popMatrix();
      }
    }

    if (keyPressed && (key==CODED))      //Movimiento IZQUIERDA
    {
      if (keyCode ==LEFT && xJ>70 && (xJ>130 && yJ>110) )
      {
        pushMatrix();
        translate(xJ, yJ);
        MovJI.draw();
        popMatrix();
        xJ-=7;
      } else if (keyPressed && keyCode == LEFT) {
        pushMatrix();
        translate(xJ, yJ);
        MovJQ.draw();
        popMatrix();
      }
    }

    if (keyPressed && (key==CODED))
    {
      if (keyCode ==DOWN && yJ<510 && xJ>=65 && xJ<390)      //Movimiento ABAJO zona AZUL
      {
        pushMatrix();
        translate(xJ, yJ);
        MovJAB.draw();
        popMatrix();
        yJ+=7;
      } else if (keyCode ==DOWN && yJ<=420 && xJ>=390 && xJ<=855)      //Movimiento ABAJO zona despues de azul
      {
        pushMatrix();
        translate(xJ, yJ);
        MovJAB.draw();
        popMatrix();
        yJ+=7;
      } else if (keyCode ==DOWN)      //Condicional limites inferiores
      {
        pushMatrix();
        translate(xJ, yJ);
        MovJQ.draw();
        popMatrix();
      }
    }
    if (keyPressed && (key==CODED))
    {
      if (keyCode == UP && yJ>170)      //Movimiento ARRIBA
      {
        pushMatrix();
        translate(xJ, yJ);
        MovJAR.draw();
        popMatrix();
        yJ-=7;
      } else if (keyPressed && keyCode == UP) {
        pushMatrix();
        translate(xJ, yJ);
        MovJQ.draw();
        popMatrix();
      }
    }
  }
}
