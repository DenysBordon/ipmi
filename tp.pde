PImage foto;

void setup() {
  size(800, 400);             // Tamaño de la ventana

  // Cargar y mostrar imagen en la mitad izquierda
  foto = loadImage("foto.jpg"); 
  foto.resize(400, 400);        
  image(foto, 0, 0);            
}
