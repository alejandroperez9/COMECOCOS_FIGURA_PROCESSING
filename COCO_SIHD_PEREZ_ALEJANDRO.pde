import processing.sound.*;

SoundFile blip;

int radio = 40;                                                        //VALOR DEL RADIO.
int direccion = 1;                                                     //SENTIDO DE LA MARCHA.
float x = 110;                                                         //COMIENZA EN EL FILO DEL LIENZO.                                        
float speed = 1.5;                                                       //VELOCIDAD.

void setup(){
  //frameRate(30);                                                       //VELOCIDAD DE EJECUCION DEL PROGRAMA.
  size(240, 120);                                                        //TAMAÑO DEL LIENZO.
  ellipseMode(RADIUS);                                                 
  blip = new SoundFile(this, "blip.wav");
}


void draw(){
  //println(frameRate);
  background(0);                                                        //COLOR DEL FONDO.
  x += speed * direccion;                                               //VELOCIDAD EN X = VELOCIDAD X DIRECCION.
  if (( x > width - radio) || (x < radio)){                 
    direccion = -direccion;
    blip.play();
  }
  
  if (direccion == 1){
    arc(x, 60, radio, radio, 0.52, 5.76);                                //CARA A LA DERECHA.
  }else{
    arc(x, 60, radio, radio, 3.67, 8.9);                                 //CARA A LA IZQUIERDA.
  }
}
