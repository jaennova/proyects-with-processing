/**
 * Tercera ley de newton: Principio de accion y reaccion
 *
 *La tercera ley de Newton establece que para cada acción hay una reacción igual y opuesta.
 *Esta ley se aplica en el despegue de un cohete cuando los motores del cohete generan
 *una fuerza que empuja al cohete hacia arriba.
 */

//declaracion de varables
PImage fuego, fondo, niebla;
PShape cohete;
float ry;
float camZ;
float xCohete, yCohete, xFuego, yFuego;
float velocidadCohete;
public void setup() {
  size(1500, 900, P3D);
  //variables X y Y para definir la posicion
  //del cohete,  el fuego y su respetiva velocidad
  xCohete = 400;
  yCohete = -20;
  xFuego = -50;
  yFuego = -110;
  velocidadCohete=-10;
   camZ = -500; 
  //carga la figura del cohete y la imagen del fuego
  cohete = loadShape("rocket.obj");
  fondo = loadImage("fondo.jpg");
  fuego = loadImage("fire.png");
  niebla = loadImage("niebla.png");
}
public void draw() {
  //fondo
  background(fondo);
  lights();
  //translate(0, 0, camZ);  // Mueve la cámara hacia atrás en el eje Z utilizando el valor de camZ
  //movimiento y ajuste de posicion del cohete
  translate(width/2, height/2 + xCohete, yCohete);
  rotateZ(PI);
  rotateY(ry);
  shape(cohete);

  //condicion para que el cohete despeje
  if (keyPressed) {
    if (key == 'l' || key == 'L') {
      image(fuego, xFuego, yFuego, 150, 150);
      image(niebla, xFuego, yFuego-100, 250, 150);
      image(niebla, xFuego, yFuego-110, 250, 150);
      image(niebla, xFuego, yFuego-120, 250, 150);
      image(niebla, xFuego, yFuego-130, 250, 150);
      
      ry += 2;
      yCohete+=velocidadCohete;
      xCohete+=velocidadCohete;
    } //fin if 2
  } //fin if
  
  //condicion para que el cohete baje
  if (keyPressed) {
    if (key == 'd' || key == 'D') {
      //ry -= 2;
      yCohete-=velocidadCohete;
      xCohete-=velocidadCohete;
    } //fin if 2
  } //fin if
} //fin draw
