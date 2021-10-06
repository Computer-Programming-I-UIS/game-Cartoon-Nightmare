boolean si= false, j=false, i=false;
void movimiento1()
{
  textFont(letra1, 50);
  image(fondo,0,0,920,620);
  fill(224,146,61);
  //rect(0,580,900,10);
  fill(198,126,48);
  //rect(0,590,900,10);
  image(tv,230,240,450,350);
  fill(0);
  text("   CARTOON  NIGTHMARE", x-242, y+10);
  fill(255);
  text("   CARTOON  NIGTHMARE", x-250, y);
}
void accion()
{
  textFont(letra, 30);
  if(si==false)
  {
    //print(mouseY);
    float r=255,g=255,b=255;
    fill(r,g,b);
    text("JUGAR",400,250);
    noStroke();
    rect(388,256,125,4);
    text("INSTRUCCIONES", 330,310);
    rect(320,315,280,4);
    if((mouseX >=386) && (mouseX<=513) && (mouseY>=227) && (mouseY<=259))      //Letrero Jugar 
    {
      r=139;g=25;b=139;
      image(fondo2,0,0,910,610);
      fill(r,g,b);
      text("JUGAR",400,250);
      rect(388,256,125,4);
      textFont(letra1, 50);
      image(tv,230,240,450,350);
      image(niñoint,310,410,180,180);
      fill(7,29,147);
      text("   CARTOON  NIGTHMARE", x-242, y+10);
      fill(255);
      text("   CARTOON  NIGTHMARE", x-250, y);
      if(mousePressed){      //Click en jugar
        si = true;
        j = true;
      }

    }
    if((mouseX >=318) && (mouseX<=600) && (mouseY>=288) && (mouseY<=320))      //Letrero Instrucciones
    {
      r=139;g=25;b=139;
        fill(r,g,b);
        text("INSTRUCCIONES", 330,310);
        rect(320,315,280,4);  
        
      if(mousePressed){
        i=true;
        si = true;
      }
    }
  }
    if(j==true){
      background(0);
    }
    if(i==true && si==true)
    {
      background(0);
      textFont(letra1,20);
      fill(255);
      text("Presionar flechas para activar el movimiento del personaje1",200,100);
    }
  }
