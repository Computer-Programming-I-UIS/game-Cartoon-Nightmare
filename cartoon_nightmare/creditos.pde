void creditos()
{
  float xC=330, r=232,g=128,b=23;
  textFont(letraC, 25);
  fill(r,g,b);
  text("  ______________________________",xC-90,yC-22);
  text("<______________***_____________>",xC-90,yC+4);
  text("CARTOON NIGHTMARE",xC,yC+40);  //Título
  textFont(letraC, 20);
  text("IMAGES and INTERACE", xC+30, yC+80); //Subtitulos
  textFont(letra1, 20);
  text("User of pixel art: Gila-Mon", xC+10, yC+120);
  text("User of pinterest art: Pablo Miceli", xC-20, yC+160);
  text("GIF Creator: Tenor", xC+40, yC+200);
  textFont(letraC, 20);
  text("GAME INSPIRATION", xC+40, yC+260);
  textFont(letra1, 20);
  text("UNDERTALE by TOBY FOX", xC-10, yC+300);
  textFont(letraC, 20);
  text("PROGRAMMERS", xC+60, yC+360);
  textFont(letra1, 20);
  text("NICOLAS CHAPARRO", xC+25, yC+400);
  text("JOSEPH TRIGOS", xC+50, yC+440);
  yC--;
  text("VOLVER", 100, 550);
  if (mouseX>=82 && mouseY >= 520 && mouseX<=210 && mouseY <= 569) {      //instruccion para volver
      fill(#CE2A2A);
      text("VOLVER", 100, 550);
      if (mousePressed) {
        si = false;
        c = false;
      }
    }
}
