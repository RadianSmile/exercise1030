PImage arrow ;
int imgWidth ;

void setup (){
  arrow =  loadImage("arrow.png") ;
  size(600 , 600) ;

  imgWidth = arrow.width ;
}

void draw(){
  background(255);
  //image(arrow,0,0);
  for (int i = imgWidth ; i < width ; i+= 2* imgWidth ){
    for (int j = imgWidth ; j < height ; j+= 2 * imgWidth){
      pushMatrix();
      imageMode(CENTER);
      translate(i,j);

      rotate( atan2(mouseY - j , mouseX - i )) ;
      image(arrow,0,0);
      rotate(0);
      popMatrix();
    }
  }
}
