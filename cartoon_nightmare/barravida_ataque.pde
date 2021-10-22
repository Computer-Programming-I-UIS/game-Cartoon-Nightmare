int xBV, yBV,pix=10;
float xOBJ=50,yOBJ=101, xBarra=50, yBarra, velBarra=4;
boolean obj=false;
void barraVida(int xBV,int yBV)
{
  fill(#817577);
  rect(xBV,yBV-pix,pix,5*pix);
  rect(xBV+(21*pix),yBV-pix,pix,5*pix);
  rect(xBV+pix,yBV-pix,pix*20,pix);
  rect(xBV+pix,yBV+(3*pix),pix*20,pix);
  fill(0,255,0);
  rect(xBV+pix,yBV,(20*pix),3*pix);
}
void OBJ1(float xOBJ, float yOBJ)
{

}

void ataque(){
  pushMatrix();
  translate(-490,-20);
  fill(#625B5B);      //Barra ATAQUE!
  rect(xb+15,yb-35,260,110);      //gris
  fill(#810510);
  rect(xb+20,yb-30,250,100);
  fill(250);
  fill(0);
  ellipse(xb+145,yb+20,240,100);
  fill(#BBFC7F);
  ellipse(xb+145,yb+20,230,90);      //verde
  fill(#E8F02C);
  ellipse(xb+145,yb+20,130,90);      //amarillo
  fill(#F7464C);
  ellipse(xb+145,yb+20,50,90);      //rojo
  fill(0);
  for (int i=0; i<=200; i+=10){
    pushMatrix();
    strokeWeight(5);
    rect(540+i,510,5,20);      //Finalizacion barra ataque
    popMatrix();
  }
  popMatrix();
  fill(255);
  rect(xBarra,460,6,80);
  if(xBarra>=30 && xBarra<=280 )
  {
    xBarra+=velBarra;
  }  
  else if(xBarra>=280 && xBarra<=30)
  {
    velBarra=-velBarra;
  }
  //if()
}  
