void combate() {
  background(0);
  fill(250);
  text("MORDECAI",445,25);
  text("JONAS",465,580);
  barraVida(450,50);
  barraVida(450,515);      //JONAS
  fill(#3E0D8E);
  triangle(0,0,450,200,900,600);
  fill(#E3253E);
  triangle(900,0,450,200,0,600);
  fill(250);
  rect(350, 100, 300, 400);
  image(mordecai, 200, 200);
  image(hqui, 780, 480, 500, 500);
  fill(#D60F2D);
  ellipse(xj1, yj1, 50, 50);
  fill(0);
  textFont(letra1, 30);
  text("J", xj1-8, yj1+5);
  fill(250);
  if (keyPressed ) {    //Movimiento j1 prueba
    if (keyCode==LEFT) {
      xj1 -= 10;
      if (xj1<375) {
        xj1=375;
      }
    } else if (keyCode==RIGHT) {
      xj1 += 10;
      if (xj1>625) {
        xj1=625;
      }
    } else if (keyCode==UP) {
      yj1 -= 10;
      if (yj1<125) {
        yj1=125;
      }
    } else if (keyCode==DOWN) {
      yj1 += 10;
      if (yj1>475) {
        yj1=475;
      }
    }
  }
}
