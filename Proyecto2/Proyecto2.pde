
import processing.video.*;

int w =120;
float [][] matrix = { {1, 0, -1},
                      {2, 0, -2},
                      {1, 0, -1}};


Movie movie1;

int p=1;
int totalE = 0;
int inicio;
int transcurso;
int limite = 15000;
int value = 0;
int contador=0;


//Imagenes
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img6;

PFont  font;

P1 p1;
P2 p2;
P3 p3;
P4 p4;
P5 p5;

Botella[] botellas;      
Catcher catcher;   
Tiempo tiempo;  

void setup() {
  size(900, 500);
  
  //Imagenes
  img1 = loadImage("img1.jpg");
  img2 = loadImage("img2.png");
  img3 = loadImage("img3.png");
  img4 = loadImage("img4.png");
  img6 = loadImage("img6.png");
  
  //Clases
  p1 = new P1();
  p2 = new P2();
  p3 = new P3();
  p4 = new P4();
  p5 = new P5();
  catcher = new Catcher(32); 
  botellas = new Botella[1000];    
  tiempo = new Tiempo(300); 
  
  tiempo.start(); 
  
  movie1 = new Movie(this,"movie1.mp4");
  movie1.loop();
  
  //contador de botellas
  contador = 0;  
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  SeleccionPantalla();
}
