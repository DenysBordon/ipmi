PImage foto;

void setup() {
  size(800, 400);             // Tamaño de la ventana

  // Cargar imagen
  foto = loadImage("foto.jpg"); 
  foto.resize(400, 400);        
}

void draw() {
  // Fondo
  background(200, 220, 255); // Cielo celeste claro

  // Mostrar la imagen en la mitad izquierda
  image(foto, 0, 0);

  noStroke();

  // CABEZA
  fill(255, 224, 189); // tono piel
  ellipse(600, 120, 160, 180); // cabeza

  // OREJAS
  ellipse(520, 120, 20, 30);
  ellipse(680, 120, 20, 30);

  // CABELLO BLANCO
  fill(255);
  ellipse(600, 60, 180, 80);

  // CABELLO BLANCO con mechones
  stroke(255);
  strokeWeight(3);
  for (int i = 530; i <= 670; i += 10) {
    line(i, 60, i, 100);
  }

  // OJOS
  fill(255);
  ellipse(570, 120, 30, 20);
  ellipse(630, 120, 30, 20);
  fill(80, 60, 40);
  ellipse(570, 120, 10, 10);
  ellipse(630, 120, 10, 10);

  // CEJAS
  stroke(60, 40, 20);
  strokeWeight(2);
  line(555, 105, 585, 105);
  line(615, 105, 645, 105);
  noStroke();

  // NARIZ
  stroke(160, 100, 90);
  line(600, 130, 600, 140);
  noStroke();

  // BOCA
  stroke(150, 50, 50);
  strokeWeight(2);
  arc(600, 160, 50, 20, 0, PI);
  noStroke();

  // MANO (seña de paz)
  fill(255, 224, 189);
  ellipse(510, 180, 40, 40); // palma
  rect(498, 140, 12, 40);    // dedo 1
  rect(512, 140, 12, 40);    // dedo 2

  // RELOJ DORADO
  fill(255, 215, 0);
  rect(495, 185, 30, 8);

  // CUERPO / CAMISETA
  fill(255);
  rect(540, 200, 120, 150);

  // DISEÑO EN LA CAMISETA
  stroke(0);
  line(560, 230, 640, 290);
  line(640, 230, 560, 290);
}
