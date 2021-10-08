void combate() {
  rect(350, 100, 300, 400);
  image(mordecai, 50, -50);
  image(hqui, 550, 220, 500, 500);
  fill(#D60F2D);
  ellipse(xj1, yj1, 50, 50);
  fill(0);
  textFont(letra1, 30);
  text("J", xj1-8, yj1+5);
  fill(250);
  if (keyPressed ) {    //Movimiento j1 prueba
    if (keyCode==LEFT) {
      xj1 -= vel;
      if (xj1<375) {
        xj1=375;
      }
    } else if (keyCode==RIGHT) {
      xj1 += vel;
      if (xj1>625) {
        xj1=625;
      }
    } else if (keyCode==UP) {
      yj1 -= vel;
      if (yj1<125) {
        yj1=125;
      }
    } else if (keyCode==DOWN) {
      yj1 += vel;
      if (yj1>475) {
        yj1=475;
      }
    }
  }
}
