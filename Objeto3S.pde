  PShape ball;
PImage txtr;
float theta;

void setup() {
  size (700, 700, P3D);
  txtr = loadImage("texture-01.jpg");
  ball = loadShape("Master Chief_Posed.obj");
  ball.setTexture(txtr); //attach texture to the 3D shape
}


void draw () {
  background (255,255,255);
  //lights();

  pushMatrix();
  translate (width/2, height/2);
  rotate(theta);
  rotateY(theta/2);
  scale (1.5);
  shape (ball);
  popMatrix();

  theta+=.01; //increment angle
}
