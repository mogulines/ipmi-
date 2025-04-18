PImage foto; // Foto

void setup() {
  size(800, 400); // Tamaño 
  background(100);
  
  foto = loadImage("foto.jpg"); // Cargar la imagen
  
  dibujarCuerpo();
  dibujarMarcoExterior();
  dibujarLente();
  dibujarBoton();
}

void draw() {
  background(225); // Fondo blanco
  
  
  image(foto, 50, 170, 250, 190); 
  
  dibujarCuerpo();
  dibujarMarcoExterior();
  dibujarLente();
  dibujarBoton();
}

void dibujarCuerpo() {
  noStroke();
  fill(135, 206, 250); // Celeste
  rect(596, 238, 184, 116);
}

void dibujarMarcoExterior() {
  stroke(0); // Borde negr
  fill(0);
  rect(788, 250, 8, 90); // Línea vertical derecha
  rect(780, 340, 8, 8); // Esquina inferior derecha 1
  rect(771, 348, 8, 8); // Esquina inferior derecha 2
  rect(613, 354, 159, 8); // Línea horizontal inferior
  rect(605, 348, 8, 8); // Esquina inferior izquierda 1
  rect(596, 342, 8, 8); // Esquina inferior izquierda 2
  rect(588, 252, 8, 90); // Línea vertical izquierda
  rect(613, 230, 159, 8); // Línea horizontal superior
}

void dibujarLente() {
  noStroke();
  fill(255);
  ellipse(688, 295, 80, 80); // Lente exterior
  ellipse(688, 295, 60, 60); // Parte media
  fill(0);
  ellipse(688, 295, 30, 30); 
}

void dibujarBoton() {
  noStroke();
  fill(255);
  rect(620, 210, 30, 20, 5); // Botón superior
}
