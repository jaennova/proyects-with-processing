public class Pelota
{
 public PVector posicion = new PVector();
 public PVector velocidad = new PVector();
 public PVector acceleracion = new PVector();
 
 public int r,g,b; 
 public float velocidadLimite = 10; 
 public float escala = 15; 
 
 public float masa = 1;

 public Pelota()
 {
   r = int(random(256));
   g = int(random(256));
   b = int(random(256));
   escala  = random(15,30);
 }
 
 public void aplicarFuerza(PVector fuerza)
 {
   PVector f = PVector.div(fuerza, this.masa); 
   this.acceleracion.add(f);
 }
 
 public void update()
 {   
   this.velocidad.add(this.acceleracion); 
   this.velocidad.limit(velocidadLimite);
   this.posicion.add(this.velocidad);
   this.acceleracion.mult(0);
 }
 //genera una pelota con un color aleatorio
 public void generarPelota()
 {
   noStroke(); 
   fill (r,g,b);
   circle(posicion.x, posicion.y, escala);
 }
  
 public void comprobarBordes()
 {
  if (posicion.x >= Ventana.parteDerecha){
    posicion.x = Ventana.parteDerecha; 
    velocidad.x *= -1;
  }
  else if (posicion.x <= Ventana.parteIzquierda){
    posicion.x = Ventana.parteIzquierda;
    velocidad.x *= -1;
  }
  
  if (this.posicion.y >= Ventana.parteSuperior){
    this.posicion.y = Ventana.parteSuperior;
    velocidad.y *= -1;
  }
  else if (this.posicion.y <= Ventana.parteInferior){
    posicion.y = Ventana.parteInferior;
    velocidad.y *= -1;
  }
 }
}
