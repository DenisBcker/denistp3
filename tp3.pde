String estado;
int bx, by, ban, bal, y;
PFont titulo, texto;
PImage maxexplorar,esperarnoche,dejar,oso2,oso,rio,explorar,volver,fondonegro1,fondonegro2,presentacion, comienzo,falla,sirenas,mensaje,altar,izquierda,entrarnave, derecha1, creditos;
void setup() {
  size(800, 660);
  surface.setLocation(710, 30);

  bx=100;//UBIC X 
  by=bx*3;//UBIC Y
  ban=bx*2;//ANCHO
  bal=bx/2;//ALTO
  y=height;

  titulo=loadFont("ArialMT-24.vlw");
  texto=loadFont("Historia.vlw"); 
  presentacion=loadImage("inicio.jpg"); //1
  comienzo=loadImage("nave estrellada.jpeg"); //2
  falla=loadImage("falla.jpg"); //3
  
  sirenas=loadImage("escucharyver.jpg"); //4
  mensaje=loadImage("azul1.jpg"); //5
  altar=loadImage("altar.jpg");//6}
  izquierda=loadImage("montaña.jpg");//7}

  derecha1=loadImage("azul21.jpg");//10
  fondonegro1=loadImage("noche.jpg");//11
  fondonegro2=loadImage("vista.jpg");//12
  explorar=loadImage("explora.jpg");//13
  rio=loadImage("vista.jpg");//14
  oso2=loadImage("maiz.jpg");//15

  oso=loadImage("oso.jpg");//16
  volver=loadImage("inicio.jpg"); //17
  esperarnoche=loadImage("llegaron.jpg");//18
  dejar=loadImage("mensaje.jpg");//19
  maxexplorar=loadImage("maxexplora.jpg");//20
  creditos=loadImage("creditos.jpg");//21
  
  estado="presentacion";//22
}
void draw() {

  println("estado es:" + estado );
  println("X es:" + mouseX ); 
  println("Y es:"+ mouseY ); 
  if (estado.equals ("presentacion"));//incio............................
  image(presentacion, 0, 0, width, height);
  textFont(titulo, 60);
  textAlign(CENTER);
  fill(200, 100, 0);
  text("Viaje espacial", width/2, height/2+20);
  fill(255);
  textSize(30);
  text("Presione ENTER para empezar", width/2, height/2+bal*5+60);
  
  if (estado.equals("comienzo")) {//comeinzo..........................
    image(comienzo, 0, 0, width, height);
    fill(0, 190);

    fill(255);
    textFont(texto, 20);
    text("(MUS) Estrella su nave en la tierra en un accidente", width/2, height/2+5);
    textSize(15);
    text("Presione la C para continuar", width/2, height/2*2-40);
    //esta bien
    
}
else if (estado.equals("falla")) {//falla...................
    image(falla, 0, 0, width, height);
   

    fill(255,0,255);
    textFont(texto, 20);
    text("Tubo fallas en su nave antes\n de llegar con sus amigos.", width/2, height/2+5);
    textSize(15);
    text("Presione la V para continuar", width/2, height/2*2-40);
}
else if (estado.equals("sirenas")) {//sirenas........
    image(sirenas, 0, 0, width, height);
    fill(0, 190);
    
    fill(255);
    textFont(texto, 20);
    text("Sale afuera para ver su entorno y ve muchas\n luces acercándose con un ruido molesto.", width/2, height/2+5);
    textSize(15);
    text("Presione la C para continuar", width/2, height/2*2-40);
}
 else if (estado.equals("mensaje")) {//mensaje..
    image(mensaje, 0, 0, width, height);
    rectMode(CORNER);
    fill(0, 150);
    rect(bx, by, ban*3, bal*2);//texto
    fill(255);
    textFont(texto, 20);
    text("Elije con cuidado si entrar en la nave\n o irte con el equipo.", width/2, height/2+5);

    rectMode(CENTER);
    fill(255, 0);
    
    fill(0, 170);//esto
    rect(bx, height-by/6, ban, bal);// botón de "a la izquierda   (codigo izquierda abajo)
    rect(bx*7, height-by/6, ban, bal);//botón de "a la derecha"    (codigo derecha abajo)


    fill(255);
    textFont(texto, 15);
    text("(Haga click en la opción que desee elegir)", width/2, height/2+by/3);
    fill(255);
    textFont(texto, 20);
    text("Entrar a la nave", bx, height-bal+5);//CAMINO 1
    text("Irse con el equipo", bx*7, height-bal+5);//CAMINO 2
    ///////opcion de maus
    } 
    else if (estado.equals("altar")) { //CAMINO 1 B.................................
    image(altar, 0, 0, width, height);

    fill(0, 170);//esto
    rect(bx, height-by/2, ban, bal);// botón de "a la izquierda"
    rect(bx*7, height-by/2, ban, bal);//botón de "a la derecha"
    fill(0, 100);
    rect(width/2, height/2, ban*2, bal*2);
    fill(220);
    textFont(texto, 20);
    text("ORDENADOR HOSTILES ACERCANDOSE\nPONGACE ASALVO .", width/2, height/2-15);
    textFont(titulo, 25);
    text("Ir a las Montañas", bx, height-bal*2.8);//CAMINO 1 
    text("Ir al Bosque", bx*7, height-bal*2.8);//CAMINO 2 
    
  } else if (estado.equals("izquierda")) {//CAMINO 1 A Montaña
    image(izquierda, 0, 0, width, height);
    fill(255);
    textFont(texto, 20);
    text("Una gran vista de su nave y los hostiles que se acercában.", width/2, height/2);
    textSize(15);
    text("Presione la V para continuar", width/2, height-bal/2);
}
     else if (estado.equals("fondonegro1")) {//.................................
    image(fondonegro1, 0, 0, width, height);
 fill(255);
    textFont(texto, 20);
    text("Pasa la noche en la cueva de la Montaña.", width/2, height/2+5);
    textSize(15);
    text("Presione la C para continuar", width/2, height/2*2-40);
     }
      else if (estado.equals("fondonegro2")) {//.................................
    image(fondonegro2, 0, 0, width, height);
    rectMode(CORNER);
    fill(0, 150);
    rect(bx, by, ban*3, bal*2);// texto
    fill(255);
    textFont(texto, 20);
    text("Despierta luego de una larga noche.", width/2, height/2+5);

    rectMode(CENTER);
    fill(255, 0);
    
    fill(0, 170);//esto
    rect(bx, height-by/6, ban, bal);// botón de "a la izquierda   (codigo izquierda abajo)
    rect(bx*7, height-by/6, ban, bal);//botón de "a la derecha"    (codigo derecha abajo)


    fill(0);
    textFont(texto, 15);
    text("(Haga click en la opción que desee elegir)", width/2, height/2+by/3);
    fill(255);
    textFont(texto, 20);
    text("Esperar por ayuda", bx, height-bal+5);//CAMINO 1
    text("Salir a explorar", bx*7, height-bal+5);//CAMINO 2
    ///////opcion de maus
    } 
    //oso
    else if (estado.equals("oso")) {//.................................
    image(oso, 0, 0, width, height);
  
    fill(255);
    textFont(texto, 20);
    text("Lo ataca un oso y muere.", width/2, height/2+5);
    textSize(15);
    text("Presione la v para continuar", width/2, height/2*2-40);
     }
     //volver a empe
     else if (estado.equals("volver")) {//volver a empezar
    image(volver, 0, 0, width, height);
  
    fill(255,0,0);
    textFont(texto, 40);
    text("VOLVER A EMPEZAR??.", width/2, height/2+5);
    fill(255);
    textSize(30);
    text("Presione la c para continuar", width/2, height/2*2-40);
     }
  //bosqauqe
 else if (estado.equals("derecha1")) {//derecho.................................
    image(derecha1, 0, 0, width, height);
    fill(0, 170);
    rect(width/2, height-30, ban*2-40, bal-20);//botón de barra espaciadora
    rect(width/2, height/2, ban*2-90, bal*2-30); //esperar
    fill(255);
    textFont(texto, 20); 
    text("Observa a los hostiles desde\n la copa de los arboles.", width/2, height/2-5);
    textSize(20);
    text("Presione la V para continuar", width/2, height-bal/2);
 }


 //en mensaje
else if (estado.equals("explorar")) {//CAMINO 1 B...............................
    image(explorar, 0, 0, width, height);
    fill(200);
    textFont(texto, 20);
    text("Explorar la zona.", width/2, height/2);
    textSize(15);
    text("Presione la V para continuar", width/2, height-bal/2);
    
}
//rio de explorar
else if (estado.equals("rio")) {//CAMINO 1 B...............................
    image(rio, 0, 0, width, height);
    fill(200);
    textFont(texto, 20);
    text("Se encuentra un rio con muchas cavernas.", width/2, height/2);
    textSize(15);
    text("Presione la c para continuar", width/2, height-bal/2);
    
}
//seguir el rio
 else if (estado.equals("oso2")) {//.................................
    image(oso2, 0, 0, width, height);
  
    fill(255);
    textFont(texto, 20);
    text("Encuentra una cosecha de maiz.", width/2, height/2+5);
    textSize(15);
    text("Presione la v para continuar", width/2, height/2*2-40);
     }
    
   
    else if (estado.equals("dejar")) {//maiz mensaje.................................
    image(dejar, 0, 0, width, height);
    rectMode(CORNER);
    fill(0, 150);
    rect(bx, by, ban*3, bal*1);// texto
    fill(255);
    textFont(texto, 20);
    text("Deja un mensaje para que sus amigos lo vean.", width/2, height/2+4);

    rectMode(CENTER);
    fill(255, 0);
    
    fill(0, 170);//esto
    rect(bx, height-by/6, ban, bal);// botón de "a la izquierda   (codigo izquierda abajo)
    rect(bx*7, height-by/6, ban, bal);//botón de "a la derecha"    (codigo derecha abajo)


    fill(255);
    textFont(texto, 15);
    text("(Haga click en la opción que desee elegir)", width/2, height/2+by/3);
    fill(255);
    textFont(texto, 20);
    text("Esperar la noche", bx, height-bal+5);//CAMINO 1
    text("Irse a explorar mas", bx*7, height-bal+5);//CAMINO 2
    ///////opcion de maus
    } 
    //final perdido
else if (estado.equals("maxexplorar")) {//CAMINO 2...............................
    image(maxexplorar, 0, 0, width, height);
    fill(255);
    textFont(texto, 20);
    text("Te perdiste y tus amigos no te encontraron.", width/2, height/2);
    textSize(15);
    text("Presione la c para continuar", width/2, height-bal/2);
}
else if (estado.equals("esperarnoche")) {//CAMINO 1 ...............................
    image(esperarnoche, 0, 0, width, height);
    fill(200);
    textFont(texto, 20);
    text("Llegaron por ti lograste sobrevivir.", width/2, height/2);
    textSize(15);
    text("Presione la V para continuar", width/2, height-bal/2);
    //creditos
    } else if (estado.equals("creditos")) {//
    image(creditos, 0, 0, width, height);
    
    fill(255);
    textFont(titulo, 40);
    text("Trabajo Práctico n°3 \n\nTecnología Multimedial 1\n\n Alumno: Denis Becker\n\n Legajo: 85105/5\n\n Comisión: 1 - 8:00 AM\n\n Profesor: José Luis Bugiolachi\n\n Juego:(MUS)ALIEN VIAJANTE\n\nFDA\n\n2020", width/2, y+50);
    textFont(texto, 15);
    text("Aprete la tecla c para volver a jugar\n y saltear creditos ", bx*5, height-bal-20);
    y-=3;
}
}
     



void keyPressed() {
  if (keyCode==ENTER&&estado=="presentacion") {//cuando presiono Enter
    estado="comienzo";
    //cambio de estado:presentación --> comienzo de la historia
  }
  if (key== 'c'&&estado=="comienzo") {//cuando presiono la c
    estado="falla";//
  }
  if (key== 'v'&&estado=="falla") {//cuando presiono v
    estado="sirenas";//
  }
  if (key== 'c'&&estado=="sirenas") {//cuando presiono la c
    estado="mensaje";//
  }
 //primeras fotos
 if (key== 'v'&&estado=="izquierda") {//cuando presiono la v
    estado="fondonegro1";//
 }
 if (key== 'c'&&estado=="fondonegro1") {//cuando presiono la c
    estado="fondonegro2";//
 }
 //ir al bosque
 if (key== 'v'&&estado=="derecha1") {//cuando presiono la v
    estado="fondonegro1";//
 }
 //ataque de oso
 
 //volver a empezar
 if (key== 'v'&&estado=="oso") {//cuando presiono la v
    estado="volver";//
 }
 if (key== 'c'&&estado=="volver") {//cuando presiono la C
    estado="presentacion";//
 }
 if (key== 'v'&&estado=="explorar") {//cuando presiono la v
    estado="rio";//
 }
 //rio se une a fondonegro 1
  if (key== 'c'&&estado=="rio") {//cuando presiono la C
    estado="fondonegro1";//
 }
 //cAMIBO FACC
   if (key== 'v'&&estado=="oso2") {//cuando presiono la v
    estado="dejar";//
 }
 if (key== 'c'&&estado=="maxexplorar") {//cuando presiono la c
    estado="volver";//
 }
 if (key== 'v'&&estado=="esperarnoche") {//cuando presiono la v
    estado="creditos";//
    
 }
 if (key== 'c'&&estado=="creditos") {//cuando presiono la C
    estado="volver";//
   
    
 }
 }


void mousePressed() {


    if (mouseX>0&&mouseX<200&&mouseY>585&&mouseY<634&&estado=="mensaje") {
    estado="altar";
   
    

  }
  if (mouseX>0&&mouseX<200&&mouseY>485&&mouseY<534&&estado=="altar") {
    estado="izquierda";
   
  }
  if (mouseX>600&&mouseX<800&&mouseY>485&&mouseY<534&&estado=="altar") {
    estado="derecha1";
   
  }
     if (mouseX>0&&mouseX<200&&mouseY>500&&mouseY<534&&estado=="vista") {
    estado="azul";
    
   
  }
//despertar oso

    if (mouseX>0&&mouseX<200&&mouseY>585&&mouseY<634&&estado=="fondonegro2") {
    estado="oso";
    //cambio de estado:´mensaje xxxxxxxxxxxxxxxxxxx
    
    }
   //irse con el equipoo
  if (mouseX>600&&mouseX<800&&mouseY>585&&mouseY<634&&estado=="mensaje") {
    estado="explorar";
   
  }
  //salir a explorar
  if (mouseX>600&&mouseX<800&&mouseY>585&&mouseY<634&&estado=="fondonegro2") {
    estado="oso2";
  }
  //final perdido y rescatado
  if (mouseX>0&&mouseX<200&&mouseY>585&&mouseY<634&&estado=="dejar") {
    estado="esperarnoche";
    }
    if (mouseX>600&&mouseX<800&&mouseY>585&&mouseY<634&&estado=="dejar") {
    estado="maxexplorar";
    }
    }
