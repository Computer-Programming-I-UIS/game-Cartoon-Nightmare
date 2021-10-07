boolean q=false;
void jugador()
{
  tiempoFrames =(float) reloj.getElapsedTime(); //tiempo transcurrido
  S4P.updateSprites(tiempoFrames);//Actualizar tiempo del sprites
  if(keyPressed==false)
  {
    pushMatrix();
    translate(xJ,yJ);
    MovJQ.draw();
    popMatrix();
  }
  if(keyPressed && (key==CODED))
  {
    if(keyCode ==RIGHT && xJ<900)
    {
      pushMatrix();
      translate(xJ,yJ);
      MovJD.draw();
      popMatrix();
      xJ+=3;
    }
  }
  if(keyPressed && (key==CODED))
  {
    if(keyCode ==LEFT && xJ>0)
    {
      pushMatrix();
      translate(xJ,yJ);
      MovJI.draw();
      popMatrix();
      xJ-=3;
    }
  }
  if(keyPressed && (key==CODED))
  {
    if(keyCode ==DOWN && yJ<600)
    {
      pushMatrix();
      translate(xJ,yJ);
      MovJAB.draw();
      popMatrix();
      yJ+=3;
    }
  }
  if(keyPressed && (key==CODED))
  {
    if(keyCode ==UP && yJ>0)
    {
      pushMatrix();
      translate(xJ,yJ);
      MovJAR.draw();
      popMatrix();
      yJ-=3;
    }
  }
}
