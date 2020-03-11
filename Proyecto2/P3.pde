class P3{
  void instrucciones(){
    
    image(movie1,0,0,width,height);
    
    //Titulo
    font = createFont("Font1.otf", 50);
    textFont(font);
    fill(0);
    text(" Instrucciones ", 320, 110);

    //Instrucciones
    textSize(30);
    text("Tienes quince segundos para atrapra la mayor",60,190);
    text("cantidad de botellas en el menor tiempo", 60, 230);
    text("Como se atrapan",60,290);
    text("Coloca el mouse sobre la esfera",60,330);
    
    text(" Haz click en W para iniciar el juego ", 240, 450); 
    
    
    font = createFont("Font2.otf", 1);
    textFont(font);
    fill(255);
    text(" . ", 320, 80);
    
    if(keyPressed &&(key== 'w'||  key == 'W')){
    p=4;
    }
  }
}
