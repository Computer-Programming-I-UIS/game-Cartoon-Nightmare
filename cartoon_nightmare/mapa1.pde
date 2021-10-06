int xa=710 , ya =270 ;
float vely = 2, velx = 7;
boolean a=false, b=true;
void mapa1(){
  image(mapa1,-50,-40,1020,700);
  image(tv,685,170,50,50);  
  
  if(b==true){
    fill(0);
    stroke(5);
    ellipse(xa-10,ya-20,15,10);
    ellipse(xa+10,ya-20,15,10);
    fill(#123786);
    ellipse(xa-10,ya-10,20,15);      //piernas
    ellipse(xa+10,ya-10,20,15);
    fill(#1B8B3B);
    ellipse(xa,ya+2,40,25);
    fill(#46A52A);
    ellipse(xa+18,ya,15,15);      //piernas
    ellipse(xa-18,ya,15,15);
    fill(#B4C12B);
    ellipse(xa,ya+5,20,20);
  }
 
 if (mousePressed){      //prueba 
   a = true;
 }
  if(a==true){
    ya -= vely ;
    xa += velx ;
    if(xa > 725){
      velx = -velx;
    }
    if(xa < 700){
      velx = -velx;
    }
  }
  if(ya < 220){
    a = false;
    b = false;
    image(portal,660,160,100,100);
  }
}
