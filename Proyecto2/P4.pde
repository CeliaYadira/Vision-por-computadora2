class P4{
  void juego(){
    translate(-14,0);
    image(img4,0,0);
    
    //Contador
    textSize(30);
    text("Contador: ",20,40);
    text(contador,140,40);
    
    //Cronometro
    if(inicio == 0){
      fill(0);
    }
    else{
      transcurso = millis() - inicio;
      if(transcurso<limite){
        textSize(30);
        fill(0);
        text("Tiempo: ", 20, 80);
        text(transcurso,130,80);
    }
    else{ p=5;
    }
    }
    
    catcher.Localizacion(mouseX, mouseY); 
    
    if (tiempo.tiempoter()) {
      botellas[totalE] = new Botella();
      totalE ++ ;
      tiempo.start();
    }

    for (int i = 0; i < totalE; i++ ) {
      botellas[i].caer();
      botellas[i].display();
        if (catcher.choque(botellas[i])) {
          botellas[i].atrapar();
          contador ++;
        }
    } 
  } 
}

void keyPressed(){
  if (value ==0){
    inicio=millis();
  }
}
