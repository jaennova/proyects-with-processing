/* Segunda ley de Newton: Principio fundamental de la dinamica.
*
* la segunda ley de Newton establece que la aceleración de un objeto 
* es directamente proporcional a la fuerza neta que se le aplica y 
* es inversamente proporcional a su masa. Esto significa que cuanto 
* mayor sea la fuerza que se aplica y menor sea la masa del objeto, 
* mayor será su aceleración
*
*/
Pelota[] nuevaPelota = new Pelota[10];
void setup()
{
  size(1280, 720, P3D);
  camera (0,0,Ventana.eyeZ,0,0,0,0,-1,0);
 int posX = 0;
 //for para crear las 10 pelotas
 for(int i=0; i < 10; i++){
   posX = 2 * (Ventana.largoDeLaVentana / 10) * (i - 5);   
   nuevaPelota[i] = new Pelota();
   nuevaPelota[i].posicion = new PVector(posX, 200); 
   nuevaPelota[i].masa = 10-i;
   nuevaPelota[i].escala = nuevaPelota[i].masa * 15; 
 }
}

void draw()
{
  background(255);
  //calcula la fuerza de fricción que actúa sobre cada pelota 
  // para ello se usa la siguiente formula
  //    Friccion = -1 * mu * N * v
  //for each para indicar los atrubutos de la nueva pelota
  for (Pelota objPelota: nuevaPelota){
    float coeficienteDeFriccion = 0.1f; //mu
    float fuerzaNormal = 1; // N
    float magnitudDeFriccion = coeficienteDeFriccion * fuerzaNormal;
    //fuerza de la friccion
    PVector friccion = objPelota.velocidad.copy(); //copia la velocidad de la pelota actual
    friccion.mult(-1);
    friccion.normalize();
    friccion.mult(magnitudDeFriccion);//determinar cuanta fuerza de friccion hay
    objPelota.aplicarFuerza(friccion);
    // representa la fuerza de la gravedad que se aplica a la aceleración de la pelota. 
      PVector gravedad = new PVector(0, -0.15 * objPelota.masa);
      objPelota.update();
      objPelota.generarPelota();
      objPelota.aplicarFuerza(gravedad); //los objetos más pesados aún tienden a moverse últimos en lugar de primeros
      objPelota.comprobarBordes(); 
  }
}
