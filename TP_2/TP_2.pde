PImage[] obras = new PImage[3];
String[] titulos = {
  "Obra 1: Machine Hallucinations",
  "Obra 2: Data Sculptures",
  "Obra 3: Quantum Memories"
};

int indiceActual = 0;
int duracionPantalla = 3000;
int tiempoCambio;
PFont miFuente;

float posYTexto = 480;
float opacidadTexto = 0;

void setup() {
  size(640, 480);
  obras[0] = loadImage("obra1.jpg");
  obras[1] = loadImage("obra2.jpg");
  obras[2] = loadImage("obra3.jpg");

  miFuente = createFont("Arial", 20);
  textFont(miFuente);
  tiempoCambio = millis();
}

void draw() {
  background(0);

  if (indiceActual < obras.length) {
    imageMode(CORNER);
    image(obras[indiceActual], 0, 0, width, height);

    fill(255, opacidadTexto);
    textAlign(CENTER);
    textSize(24);
    text(titulos[indiceActual], width / 2, posYTexto);

    // Animación de entrada del texto
    if (posYTexto > height - 100) {
      posYTexto -= 1;
    }
    if (opacidadTexto < 255) {
      opacidadTexto += 2;
    }

    if (millis() - tiempoCambio > duracionPantalla) {
      indiceActual++;
      tiempoCambio = millis();
      posYTexto = height;
      opacidadTexto = 0;
    }

  } else {
    mostrarPantallaFinal();
  }
}

void mostrarPantallaFinal() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(28);
  text("Fin de la presentación", width / 2, height / 2 - 50);

  fill(80);
  rectMode(CENTER);
  rect(width / 2, height / 2 + 20, 120, 45, 10);

  fill(255);
  textSize(18);
  text("Reiniciar", width / 2, height / 2 + 26);
}

void mousePressed() {
  if (indiceActual == obras.length) {
    if (mouseX > width/2 - 60 && mouseX < width/2 + 60 &&
        mouseY > height/2 - 5 && mouseY < height/2 + 40) {
      
      indiceActual = 0;
      tiempoCambio = millis();
      posYTexto = height;
      opacidadTexto = 0;
    }
  }
}
