int xBV, yBV, pix=10;
float xOBJ=50, yOBJ=101, xBarra=50, yBarra, velBarra=4;
float bvm=200,bvj=200;
float oy1=100,oy2=100,oy3=100,oy4=100;
float ox1=360,ox2=420, ox3=470,ox4=560;
float cx1=440,cy1=130;
boolean obj=false, ataque=false;

void barraVida(int xBV, int yBV)
{
  fill(#817577);
  rect(xBV, yBV-pix, pix, 5*pix);
  rect(xBV+(21*pix), yBV-pix, pix, 5*pix);
  rect(xBV+pix, yBV-pix, pix*20, pix);
  rect(xBV+pix, yBV+(3*pix), pix*20, pix);
  fill(250);
  rect(xBV+pix, yBV, (20*pix), 3*pix);
}
void objetos()
{
  fill(200,0,0);
  rect(ox1,oy1,10,30);
  rect(ox2,oy2,10,30);
  rect(ox3,oy3,10,30);
  rect(ox4,oy4,10,30);
  fill(0,0,250);
  ellipse(cx1,cy1,20,20);
  fill(200,0,0);
  
  oy1+=3;oy2+=4;oy3+=3;oy4+=1; cy1+=3;

  if(cy1>480){
    cx1 = random(360,550);
    cy1=125;
  }
  if(oy1>480){
    ox1 = random(360,550);
    oy1=125;
  }
  if(oy2>480){
    ox2 = random(360,550);
    oy2=125;
  }
  if(oy3>480){
    ox3 = random(360,550);
    oy3=125;
  }
  if(oy4>480){
    ox4 = random(360,550);
    oy4=125;
  }
}

void ataque() {
  pushMatrix();
  translate(-490, -20);
  fill(#625B5B);      //Barra ATAQUE!
  rect(xb+15, yb-35, 260, 110);      //gris
  fill(#810510);
  rect(xb+20, yb-30, 250, 100);
  fill(250);
  fill(0);
  ellipse(xb+145, yb+20, 240, 100);
  fill(#BBFC7F);
  ellipse(xb+145, yb+20, 230, 90);      //verde
  fill(#E8F02C);
  ellipse(xb+145, yb+20, 130, 90);      //amarillo
  fill(#F7464C);
  ellipse(xb+145, yb+20, 50, 90);      //rojo
  fill(0);
  print(xBarra);
  for (int i=0; i<=200; i+=10) {
    strokeWeight(5);
    rect(540+i, 510, 5, 20);      //Finalizacion barra ataque
  }
  /*rect(540, 510, 5, 30);      //limites
  rect(540+40, 505, 5, 30);
  rect(540+80, 505, 5, 30);
  rect(540+125, 505, 5, 30);
  rect(540+165, 505, 5, 30);*/
  popMatrix();
  fill(0,250,0);
  rect(400, 50, bvm, 30);
  rect(400, 515, bvj, 30);
  if (ataque==false) {      //momento de atacar *verdadero
    fill(255);
    rect(xBarra, 460, 6, 80);
    xBarra+=velBarra;
    if (xBarra>250) {
      velBarra = -velBarra;
    }
    if (xBarra<50) {
      velBarra = -velBarra;
    }
  }
  if(keyPressed && key == 'z'){
    if(xBarra<120){
      bvm=bvm-5;
    }
    }
    objetos();
}
