int xa=710, ya =270 ;
float vely = 2, velx = 7;
boolean a=false, v=true;
void mapa1() {

  if (v==true) {
    fill(0);
    stroke(5);
    ellipse(xa-10, ya-20, 15, 10);
    ellipse(xa+10, ya-20, 15, 10);
    fill(#123786);
    ellipse(xa-10, ya-10, 20, 15);      //piernas
    ellipse(xa+10, ya-10, 20, 15);
    fill(#1B8B3B);
    ellipse(xa, ya+2, 40, 25);
    fill(#46A52A);
    ellipse(xa+18, ya, 15, 15);      //piernas
    ellipse(xa-18, ya, 15, 15);
    fill(#B4C12B);
    ellipse(xa, ya+5, 20, 20);
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
  if (ya < 220) {
    a = false;
    v = false;
    image(portal, 710, 200, 100, 100);
    historiaP3();
    z=true;
  }
}
