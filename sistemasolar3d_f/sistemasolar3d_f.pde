import peasy.*;
PeasyCam cam;

PImage imgsol;
PImage imgmercurio;
PImage imgvenus;
PImage imgtierra;
PImage imgmarte;
PImage imgjupiter;
PImage imgsaturno; 
PImage imgurano; 
PImage imgneptuno;
PImage imgespacio;
PShape fondo;
PShape shapesol;
PShape shapemercurio;
PShape shapevenus;
PShape shapetierra;
PShape shapemarte;
PShape shapejupiter;
PShape shapesaturno;
PShape shapeurano;
PShape shapeneptuno;

//variables para manejar las velocidades
Float sol= 0.00005;
Float mercurio= -0.00003;
Float venus = -0.00004;
Float tierra = -0.00005;
Float marte = -0.00006;
Float jupiter = -0.00007;
Float saturno = -0.00008;
Float urano = -0.00009;
Float neptuno = -0.000010;
Float ligth = 0.0;
int ligthSol = 70;
int ligthMercurio = 80;
int ligthVenus = 76;
int ligthTierra = 100;
int ligthMarte = 90;
int ligthJupiter = 78;
int ligthSaturno = 85;
int ligthUrano = 77;
int ligthNeptuno = 88;

void setup() {

  size(1500, 700, P3D);
imgespacio = loadImage("space.png");
 imgespacio.resize(width, height);
  cam = new PeasyCam(this, 1000);
  
  //sol
 imgsol = loadImage("sunmap.jpg");
 noStroke();
 shapesol = createShape(SPHERE,150);
 shapesol.setTexture(imgsol);
 background(255);
 //img mercurio
 imgmercurio = loadImage("mercurymap.jpg");
 shapemercurio =createShape(SPHERE,60);
 shapemercurio.setTexture(imgmercurio);
 noStroke();
 //imgvenus
 imgvenus = loadImage("venusmap.jpg");
 shapevenus = createShape(SPHERE,60);
 shapevenus.setTexture(imgvenus);
 noStroke();
 //tierra
 imgtierra = loadImage("earthmap1k.jpg");
 shapetierra = createShape(SPHERE,60);
 shapetierra.setTexture(imgtierra);
 noStroke();
 //marte
 imgmarte = loadImage("mars_1k_color.jpg");
 shapemarte = createShape(SPHERE,60);
 shapemarte.setTexture(imgmarte);
 noStroke();
 //jupiter
 imgjupiter = loadImage("jupitermap.jpg");
 shapejupiter = createShape(SPHERE,60);
 shapejupiter.setTexture(imgjupiter);
 noStroke();
  //saturno
 imgsaturno = loadImage("saturnmap.jpg");
 shapesaturno = createShape(SPHERE,60);
 shapesaturno.setTexture(imgsaturno);
 noStroke();
  //neptuno
 imgneptuno = loadImage("neptunemap.jpg");
 shapeneptuno = createShape(SPHERE,60);
 shapeneptuno.setTexture(imgneptuno);
 noStroke();
  //urano
 imgurano = loadImage("uranusmap.jpg");
 shapeurano = createShape(SPHERE,60);
 shapeurano.setTexture(imgurano);
 noStroke(); 
}

void draw() {

  
  //declaracion de las dimensiones de los planetas
  
  ////////////////////////////////////////////////////////////////
  //edit
  /////////////////////////////////////////////
   
//background(255);
stroke(0);
strokeWeight(10);
point(0,0,0);
stroke(#1c4485);
strokeWeight(1);

background(imgespacio);
///lineas
//mercurio
ellipse(25,25,760,780);
noFill();
stroke(#1c4485);
//venus
ellipse(25,25,1260,1260);
noFill();
stroke(#1c4485);
//tierra
ellipse(25,25,1680,1670);
noFill();
stroke(#1c4485);
//marte
ellipse(25,25,2150,2100);
noFill();
stroke(#1c4485);
//jupiter
ellipse(25,25,2550,2600);
noFill();
stroke(#1c4485);
//saturno
ellipse(25,25,3030,3030);
noFill();
stroke(#1c4485);
//neptuno
ellipse(25,25,3500,3440);
noFill();
stroke(#1c4485);
//urano
ellipse(25,25,3900,3940);
noFill();
stroke(#1c4485);
//sol
stroke(255,255,0);
strokeWeight(0);

//planetas
//directionalLight(51, 225, 225, -1, 255, 0);
  //sol
  
rotate(.05);
translate(0,0,0);
sol+=.004;
rotate(sol);
sphere(150);
shape(shapesol);
//mercurio
pushMatrix();
stroke(#B28A8A);
translate(0,0,0);
rotate(mercurio);
strokeWeight(0);
mercurio+=.003;
ligth+=.003;


directionalLight(250,250,250,ligth,100,1);
pointLight(250,250,250,ligth, 100, 1);
lightSpecular(250, 250, 250);

translate(255,285,0);
rotate(mercurio);
sphere(40);
shape(shapemercurio);
popMatrix();
//venus
pushMatrix();
stroke(#B28A8A);
translate(0,0,0);
rotate(venus);
strokeWeight(0);
venus+=.002;
ligth+=.002;
translate(485,385,0);
rotate(venus);
sphere(40);
shape(shapevenus);
popMatrix();
//tierra
pushMatrix();
stroke(#B28A8A);
translate(0,0,0);
rotate(tierra);
strokeWeight(0);
tierra+=.004;
ligth+=.004;
translate(685,485,0);
rotate(tierra);
sphere(50);
shape(shapetierra);
popMatrix();
//marte
pushMatrix();
stroke(#B28A8A);
translate(0,0,0);
rotate(marte);
strokeWeight(0);
marte+=.005;
ligth+=.005;
translate(885,585,0);
rotate(marte);
sphere(50);
shape(shapemarte);
popMatrix();
//jupiter
pushMatrix();
stroke(#B28A8A);
translate(0,0,0);
rotate(jupiter);
strokeWeight(0);
jupiter+=.002;
ligth+=.002;
translate(1085,685,0);
rotate(jupiter);
sphere(50);
shape(shapejupiter);
popMatrix();
//saturno
pushMatrix();
stroke(#B28A8A);
translate(0,0,0);
rotate(saturno);
strokeWeight(0);
saturno+=.004;
ligth+=.004;
translate(1285,785,0);
rotate(saturno);
sphere(50);
shape(shapesaturno);
popMatrix();

//urano 
pushMatrix();
stroke(#B28A8A);
translate(0,0,0);
rotate(urano);
strokeWeight(0);
urano+=.003;
ligth+=.003;
translate(1485,885,0);
rotate(urano);
sphere(50);
shape(shapeurano);
popMatrix();
//neptuno
pushMatrix();
stroke(#B28A8A);
translate(0,0,0);
rotate(neptuno);
strokeWeight(0);
neptuno+=.002;
ligth+=.002;
translate(1700,985,0);
rotate(neptuno);
sphere(50);
shape(shapeneptuno);
popMatrix();
  
}
