int xBV, yBV,pix=10;
void barraVida(int xBV,int yBV)
{
  fill(#817577);
  rect(xBV,yBV,pix,3*pix);
  rect(xBV+(11*pix),yBV,pix,3*pix);
  rect(xBV+pix,yBV-pix,pix*10,pix);
  rect(xBV+pix,yBV+(3*pix),pix*10,pix);
  fill(0,255,0);
  rect(xBV+pix,yBV,(10*pix),3*pix);
}

void ataque(){
  fill(#625B5B);
  rect(45,445,260,110);
  fill(250);
  rect(50,450,250,100);
  text("ATAQUE!",80,430);
  fill(0);
  ellipse(180,500,240,100);
  fill(250);
  ellipse(180,500,230,90);
}
