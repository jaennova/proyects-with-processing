PShape car;
float x,y,vel,x1;
void setup() {
  size(1200, 600,P3D);
  background(255);
    //shape
    car = loadShape("Humvee.obj");
     x = 250;
     y = 480;
     x1 = 80;
     vel=5;
}      

void draw() {
  
  background(222);
  lights();
  translate(x,y, -90);
  rotateZ(PI);
  rotateY(99);
  //shape(car);200 -110
  shape(car, x1, 70);
  if (keyPressed) {
    if (key == 'l' || key == 'L') {
       //y+=vel;
       x+=vel;
       
    } //fin if 2
} //fin if

}
