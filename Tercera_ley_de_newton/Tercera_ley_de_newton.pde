/**
 * Load and Display an OBJ Shape. 
 * 
 * The loadShape() command is used to read simple SVG (Scalable Vector Graphics)
 * files and OBJ (Object) files into a Processing sketch. This example loads an
 * OBJ file of a rocket and displays it to the screen. 
 */
PImage img;
PShape rocket;
float ry;
float x,y,x1,y1;
float vel;
public void setup() {
  size(640, 360, P3D);
   x = 400;
   y = -20;
   x1 = 400;
   y1 = -20;
   vel=-10;
  rocket = loadShape("rocket.obj");
  img = loadImage("fire.png");
}
public void draw() {
  background(0);
  lights();
  
  translate(width/2, height/2 + x, y);
  rotateZ(PI);
  rotateY(ry);
  shape(rocket);  
  //image
  //image(img, x1-450, y1-50,100,100);
  image(img, x1-450, y1-50,100,100);
  
  //avanza
if (keyPressed) {
    if (key == 'l' || key == 'L') {
       ry += 2;
       y+=vel;
       x+=vel;
    } //fin if 2
} //fin if
  
} //fin draw
