class P5{
  void resolucion(){
    translate(-14,0);
    image(img6,0,0);
    
    //Titulo
    font = createFont("Font1.otf", 50);
    textFont(font);
    fill(0);
    text(" Gracias por jugar ", 550, 80);
    
    textSize(35);
    fill(0);
    text(" hasta la proxima ", 590, 130);
    
    text(" total ", 630, 190);
    
    
    font = createFont("Font2.otf", 20);
    textFont(font);
    fill(0); 
    text(contador,720, 190);
    
    
    font = createFont("Font1.otf", 25);
    textFont(font);
    fill(0);
    text(" Haz click en M para salir del juego ", 540, 240);
    
    if(keyPressed &&(key== 'm'||  key == 'M')){
    exit();
    }    
  }
}
