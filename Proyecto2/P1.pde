class P1{
void inicio(){
  
  if(keyPressed &&(key== 'a'||  key == 'A')){
  p=2;
  }

  image(img1,0,0);
  int xstart =  constrain(mouseX -w/2, 0, img1.width);
  int ystart =  constrain(mouseY -w/2, 0, img1.height);
  int xend =  constrain(mouseX +w/2, 0, img1.width);
  int yend =  constrain(mouseY +w/2, 0, img1.height);
  int matrixsize =3;
  loadPixels();
  for(int x= xstart; x<xend; x++){
    for (int y= ystart; y<yend; y++){
      color c = convolution(x, y, matrix, matrixsize, img1);
      int loc = x+y*img1.width;
      pixels[loc] = c;
      
    }
  }
  updatePixels();

        
  if(keyPressed &&(key== 'a'||  key == 'A')){
  p=2;
  }      
}
}








color convolution(int x, int y, float[][] matrix, int matrixsize, PImage img){
    float rtotal =0.0;
    float gtotal =0.0;
    float btotal =0.0;
    int offset = matrixsize /2;
    for(int i = 0; i< matrixsize; i++){
      for (int j = 0; j< matrixsize; j++){
        int xloc = x+i-offset;
        int yloc = y+j-offset;
        int loc = xloc + img.width*yloc;
        loc=constrain(loc,0,img.pixels.length-1);
        
        rtotal += (red(img.pixels[loc])*matrix[i][j]);
        gtotal += (green(img.pixels[loc])*matrix[i][j]);
        btotal += (blue(img.pixels[loc])*matrix[i][j]);
      }
    }
    
    rtotal = constrain(rtotal, 0, 255);
    gtotal = constrain(gtotal, 0, 255);
    btotal = constrain(btotal, 0, 255);
    return color(rtotal, gtotal, btotal);
}
