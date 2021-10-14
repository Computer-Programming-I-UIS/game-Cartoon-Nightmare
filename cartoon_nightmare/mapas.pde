int xa=700, ya =250 ;
float vely = 2, velx = 7;
boolean a=false, v=true, entroportal=false, reyMov=false;
void mapa1() {

  if (v==true) {
    image(hsentado,xa,ya,45,45);
  }

  if (mouseX>=493 && mouseX<=506 && mouseY>=118 && mouseY<=141) {      //click en olla
    a = true;
  }
  if (a==true) {      //movimiento mateo
    ya -= vely ;
    xa += velx ;
    if (xa > 725) {
      velx = -velx;
    }
    if (xa < 700) {
      velx = -velx;
    }
  }
  if (ya < 220) {      //
    a = false;
    v = false;
    image(portal, 710, 200, 100, 100);
    historiaP3();
    z=true;
  }
  if (xJ>=684 && xJ<730 && yJ>=178 && yJ<=231) {      //Entro al portal
    entroportal=true;
    mapa1off = false;
  }
}
void mapa2() {
    if (entroportal==true) {    //entre otra dimension
      pushMatrix();
      translate(460, 300);
      image(mapa2, 0, 0, 1000, 700);
      popMatrix();
      jugador();
      image(consola,150,480,200,200);
      if(reyMov==false)image(rey,665,369,100,100);
      if(xJ>=689 && xJ<=740 && yJ>=365 && yJ<=411)
      {
        reyMov=true;
      }
      else reyMov=false;
      if(reyMov==true)
      {
        float xR=665, yR=369;
        pushMatrix();
        translate(xR, yR);
        Rey.draw();
        popMatrix();
      }  
      //image(mordecai, 250, 480, 120,120);
  }
}
