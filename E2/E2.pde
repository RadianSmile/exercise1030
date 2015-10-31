PImage sun ;
PImage earth ;
PImage moon ;
int earthDiagram ;
int moonDiagram ;
float moonRotation ;

void setup (){

  size(600,600);
  sun = loadImage("sun.png");
  earth = loadImage("earth.png");
  moon = loadImage("moon.png");
  imageMode(CENTER);
  earthDiagram = 150 ;
  moonDiagram = 60 ;
}
void draw(){
  background(0);
  // draw sun
  image(sun,width / 2 ,height /2 );

  // draw earth

  pushMatrix();
  translate(width / 2,height /2) ;
  float rotation = map(mouseX , 0 , width , -PI , PI) ;
  println (rotation);
  //rotate (rotation) ;
  translate(earthDiagram * cos(rotation),earthDiagram * sin(rotation)) ;
  image(earth,0,0);

  rotate (0) ;


  translate(moonDiagram * cos(moonRotation) , moonDiagram * sin(moonRotation) ) ;
  image(moon,0,0);

  moonRotation += 0.01 ;


  popMatrix();
}
