boolean h1=true, h2=true, h3=true;
void historiaP1()
{
  if (h1 == true) {
    background(0);
    textFont(letra1, 26);
    text("Cae la noche y Jonas regresa de su jornada laboral. Lo espera Mateo \n(su hermano menor), cenando y viendo, cómo es habitual sus caricaturas.\nLa noche cae densa y su oscuridad limita las pocas luces que rodean \nla cabaña...", 25, 30);
    text("Una corta introducción a la historia de Jonas y Mateo: ", 25, 180);
    textFont(letra, 26);
    text("//Jonas y Mateo quedan hurfanos con 8 y 3 años, respectivamente. \nViven con sus abuelos en una cabaña a las afueras del pueblo Necronomicon.\nSus abuelos fallecen, Jonas es el encargado de cuidar y educar a su hermano.//", 23, 240);
    text("El sustento diario lo logra Jonas en su trabajo, una fabrica de manufactura \ncon turnos de día completo.\nLa soledad fría y abrumadora de la cabaña, Mateo la olvida viendo \nen su tv, heredada de su abuelo, sus episodios favoritos de Cartoon Network.", 26, 340);
    textFont(letra1, 20);
    text("Presiona la tecla 'a' para continuar...", 600, 580);
   // h2=false;
    ///h3=false;
  }
}
void historiaP2()
{
  if (h2 == true) {
    text("Jonas llega a prepararse la comida: \n*Ve a la cocina y posa el cursor en la olla.", 400, 520);
    //h1=false;
    //h3=false;
  }
}
void historiaP3()
{
  if (h3 == true) {
    text("(Grito aturdidor)...\n-Jonas: '¡Mateo! ¿Qué sucede?'", 400, 520);
    text("Dirígete al portal", 400, 560);
    //h1=false;
   // h2=false;
  }
}
