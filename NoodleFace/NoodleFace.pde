
import processing.video.*;
int celda = 20;
int columnas, filas;
Ventana una;
Capture video;
int cambio = 0;
void setup() {
  size(1200, 700);
  frameRate(30);
  una = new Ventana();
  columnas = width / celda;
  filas = height / celda;
  colorMode(RGB, 255, 255, 255, 100);
  video = new Capture(this, width, height);
  video.start();  
  background(0);
}


void draw() { 
    
  una.display();
 
}
