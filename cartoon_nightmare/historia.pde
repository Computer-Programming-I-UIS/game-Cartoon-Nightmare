boolean h1=true, h2=true, h3=true, h4 = true;
void historiaP1()
{
  if (h1 == true) {
    background(0);
    textFont(letra1, 26);
    text("Cae la noche y Jonas regresa de su jornada laboral. Lo espera Mateo \n(su hermano menor), cenando y viendo, cómo es habitual sus \ncaricaturas. La noche cae densa y su oscuridad limita las pocas luces \nque rodean la cabaña...", 25, 90);
    text("Una corta introducción a la historia de Jonas y Mateo: ", 25, 220);
    textFont(letra, 26);
    text("//Jonas y Mateo quedan hurfanos con 8 y 3 años, respectivamente. \nViven con sus abuelos en una cabaña a las afueras del pueblo Necronomicon.\nSus abuelos fallecen, Jonas es el encargado de cuidar y educar a su hermano.//", 23, 260);
    text("El sustento diario lo logra Jonas en su trabajo, una fabrica de manufactura \ncon turnos de día completo.\nLa soledad fría y abrumadora de la cabaña, Mateo la olvida viendo \nen su TV, heredada de su abuelo, sus episodios favoritos de Cartoon Network.", 26, 360);
    textFont(letra1, 20);
    fill(250,0,0);
    text("Presiona la tecla 'a' para continuar...", 530, 570);
    fill(250);
   // h2=false;
    ///h3=false;
  }
}
void historiaP2()
{
  if (h2 == true) {
    textFont(letra1, 20);
    text("Jonas llega del trabajo cansado, observa a su \nhermano viendo televisión y se dirige a la \ncocina a preparase la cena.", 400, 480);
    fill(250,0,0);
    text("Dirígete a la cocina y pon el cursor en la olla",400,560);
    fill(250);
  }
}
void historiaP3()
{
  if (h3 == true) {
    textFont(letra1, 20);
    text("AHHHHHHHHHHHHH!...\n-Jonas: ¡Mateo! ¿Qué sucede?\n-Jonas: ¿Dónde está mi hermano? \n-Jonas: ¿Qué es este portal?", 400, 480);
    fill(250,0,0);
    text("Dirígete al portal", 410, 580);
    fill(250);
    //h1=false;
   // h2=false;
  }
}
void historiaP4(){  
  if (h4 == true){
  textFont(letra1, 20);
  text("-Jonas: ¿Qué es este lugar?\n-Jonas: ¿Qué hace el Rey Helado aquí?",400,480);
  fill(250,0,0);
  text("Dirígete hacia el Rey Helado", 410, 580);
  fill(250);
  }
}
