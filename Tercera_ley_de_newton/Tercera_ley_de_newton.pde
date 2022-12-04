/**
 * Tercera ley de newton: Principio de accion y reaccion
 * 
 *La tercera ley de Newton establece que para cada acción hay una reacción igual y opuesta.
 *Esta ley se aplica en el despegue de un cohete cuando los motores del cohete generan 
 *una fuerza que empuja al cohete hacia arriba.
 */
 
//declaracion de varables
PImage img;
PShape rocket;
float ry;
float xCohete,yCohete,xFuego,yFuego;
float velocidadCohete;
public void setup() {
  size(640, 960, P3D);
  //variables X y Y para definir la posicion 
  //del cohete,  el fuego y su respetiva velocidad
   xCohete = 400;
   yCohete = -20;
   xFuego = 400;
   yFuego = -20;
   velocidadCohete=-10;
   //carga la figura del cohete y la imagen del fuego
  rocket = loadShape("rocket.obj");
  img = loadImage("fire.png");
}
public void draw() {
  //fondo
  background(0);
  lights();
  //movimiento y ajuste de posicion del cohete
  translate(width/2, height/2 + xCohete, yCohete);
  rotateZ(PI);
  rotateY(ry);
  shape(rocket);  
  //posicion y tamano del fuego
  image(img, xFuego-450, yFuego-50,100,100);
  
  //condicion para que el cohete despeje
if (keyPressed) {
    if (key == 'l' || key == 'L') {
       ry += 2;
       yCohete+=velocidadCohete;
       xCohete+=velocidadCohete;
    } //fin if 2
} //fin if
  
} //fin draw
