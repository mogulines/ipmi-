PImage img1, img2, img3;
int pantalla = 1;  // para controlar qué pantalla mostrar
int tiempoPantalla = 0;  // para controlar tiempo
float textoAlpha = 0;  // transparencia del texto

void setup() {
  size(640, 480);
  img1 = loadImage("img1.png");
  img2 = loadImage("img2.png");
  img3 = loadImage("img3.png");
  textAlign(CENTER, CENTER);
  textSize(20);
}

void draw() {
  background(0);

  // Aumentamos la opacidad del texto suavemente
  if (textoAlpha < 255) {
    textoAlpha += 2;
  }

  switch(pantalla) {
    case 1:
      image(img1, 0, 0, width, height);
      fill(255, textoAlpha);
      text("Limbo es un juego de plataformas", width/2, height - 100);
      text("que destaca por su atmósfera oscura y misteriosa.", width/2, height - 75);
      break;

    case 2:
      image(img2, 0, 0, width, height);
      fill(255, textoAlpha);
      text("El jugador controla a un niño que debe", width/2, height - 100);
      text("superar obstáculos peligrosos y enemigos.", width/2, height - 75);
      break;

    case 3:
      image(img3, 0, 0, width, height);
      fill(255, textoAlpha);
      text("El juego usa un diseño en blanco y negro", width/2, height - 100);
      text("que potencia la tensión y el suspenso.", width/2, height - 75);

      // Botón
      fill(255);
      rectMode(CORNER);
      rect(width/2 - 50, height - 60, 100, 40);

      fill(0);
      text("REINICIAR", width/2, height - 40);
      break;
  }

  // Cambio automático de pantalla cada 5 segundos (300 frames)
  if (frameCount - tiempoPantalla > 300) {
    pantalla++;
    tiempoPantalla = frameCount;
    textoAlpha = 0;  // reinicia animación del texto
  }

  // Volver a la primera pantalla si pasa la última
  if (pantalla > 3) {
    pantalla = 1;
    textoAlpha = 0;
  }
}

void mousePressed() {
  if (pantalla == 3) {
    int botonX = width / 2 - 50;
    int botonY = height - 60;
    int botonW = 100;
    int botonH = 40;

    if (mouseX > botonX && mouseX < botonX + botonW &&
        mouseY > botonY && mouseY < botonY + botonH) {
      pantalla = 1;
      tiempoPantalla = frameCount;
      textoAlpha = 0;
    }
  }
}
