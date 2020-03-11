class P2{
  void historia1(){

    // Imagen
    image(img2,0,0);
  
    
    
    //Instrucción
    font = createFont("Font1.otf", 30);
    textFont(font);
    fill(0);
    text(" Haz click en B para continuar ", 510, 430);
    
    if(keyPressed &&(key== 'B'||  key == 'b')){
    p=3;
    movie1.play();
    }  
  }
}
