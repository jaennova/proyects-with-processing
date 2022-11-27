

void img_planetas(){

  //rotacion
angulo=angulo+0.00172;
translate(0,0);
rotate(angulo);
 //mercuriio
  mercurio = loadImage("mercurio.png");
  mercurio.resize(55,65);
  image(mercurio,170,220);
  
  angulo=angulo+0.00126;
  translate(0,0);
rotate(angulo);
 //venus
  venus = loadImage("venus.png");
  venus.resize(38,38);
  image(venus,235,135);
  
angulo=angulo+0.00107;
 translate(0,0);
rotate(angulo);
  //tierra
 tierra = loadImage("tierra.png");
  tierra.resize(70,50);
  image(tierra,274,200);
 
 angulo=angulo+0.00086;
 translate(0,0);
rotate(angulo);
 //marte
 marte = loadImage("marte.png");
  marte.resize(24,24);
  image(marte,329,253);
 
  angulo=angulo+0.00047;
 translate(0,0);
rotate(angulo);
 //jupiter
 jupiter = loadImage("jupiter.png");
  jupiter.resize(46,46);
  image(jupiter,390,155);
  
  angulo=angulo+0.00034;
 translate(0,0);
rotate(angulo);
 //saturno
 saturno = loadImage("saturno.png");
  saturno.resize(110,60);
  image(saturno,410,32);
  
 angulo=angulo+0.00019;
 translate(0,0);
rotate(angulo);
 //neptuno
 neptuno = loadImage("neptuno.png");
  neptuno.resize(60,60);
  image(neptuno,540,77);
  
   //rotacion
angulo=angulo+0.00024;
translate(0,0);
rotate(angulo);
//urano
 urano = loadImage("urano.png");
  urano.resize(85,50);
  image(urano,490,240);
 
  
}
