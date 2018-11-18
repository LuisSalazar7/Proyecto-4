class Ventana 
{
   
  void display ()
  {
    
    String s = "Presiona: 1, 2 o 3 para cambiar el color y cualquier otra tecla para normalizar";
    if (video.available())
    {
      video.read();
      video.loadPixels();
   
     
       for (int i = 0; i < columnas; i++) 
        {   
          for (int j = 0; j < filas; j++) 
          {
         
            int x = i*celda;
            int y = j*celda;
            int col = (video.width - x - 1) + y*video.width; 
          
            float r = red(video.pixels[col]);
            float g = green(video.pixels[col]);
            float b = blue(video.pixels[col]);
          
           if (key == '1'){
               r = random (255);
           }
           if (key == '2'){
               b = random (255);;
           }
           if (key == '3'){
               g = random (255);;
           }
            color c = color(r, g, b, 75);
         
            pushMatrix();
            translate(x+celda/2, y+celda/2);
            rotate((2 * PI * brightness(c) / 255.0));
            rectMode(CENTER);
            fill(c);
            ellipse(0, 0, 3, random(20,200));
            popMatrix();
            fill(255);
            textSize(20);
            text (s, 50, 650);
           
            
          }
        }
         
    }
    
  }
  
 

  
}
