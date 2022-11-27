color c_sol = color (#EB3D0C);//
color c_mercurio = color(#E49521);//
color c_venus = color(#C54A2D);//
color c_tierra = color(#3F8EAC);//
color c_luna = color (#ACABB0);////
color c_marte = color (#D30D10);//
color c_jupiter = color(#B7A36A);//
color c_saturno = color(#DB9B5C);//
color c_urano = color(#1B7EB5);
color c_neptuno = color(#13424D);

void planetas(){
  

//sol

//fill(#E9420A);
//ellipse(10,150,240,240);
//sol
sol = loadImage("sol.png");
  sol.resize(260,260);
  image(sol,-140,40);
 
 ///////////////////////////// 
 //mercurio
 fill(#E49521);
 ellipse(194,253,40,40);
  
 //venus
 fill(#C54A2D);
 ellipse(255,153,36,36);
 
 
 //tierra
 fill(#3F8EAC);
 ellipse(307,224,44,44);

 
 //luna
 fill(#ACABB0);
 ellipse(320,190,10,10);
 
  //luna
 //luna = loadImage("luna.png");
  //luna.resize(10,10);
  //image(luna,317,185);
 
 //marte
 fill(#D30D10);
 ellipse(340,264,24,24);
 
 
 //jupiter
 fill(#B7A36A);
 ellipse(410,174,44,44);

 
 //saturno
 fill(#DB9B5C);
 ellipse(464,60,44,44);
 
 
 //neptuno
 fill(#13424D);
 ellipse(567,102,44,44);
 
 
 
 //urano
 fill(#1B7EB5);
 ellipse(533,262,44,44);
 
  
 
}
