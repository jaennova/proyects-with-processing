float angulo = 0;
float x = 0;
float y=0;
PImage img;
PImage sol;
PImage mercurio;
PImage venus;
PImage tierra;
PImage marte;
PImage jupiter;
PImage saturno;
PImage neptuno;
PImage urano;
PImage luna;
void setup(){
  
 size(640,394);
 smooth();
 
}

void draw(){
  
 background(#1B2D41);
  //fondo
   fondo();
  img_planetas();
   angulo=angulo-0.00000004;
translate(15,35);
rotate(angulo);

luna = loadImage("luna.png");
luna.resize(7,7);
image(luna,317,185);


}
