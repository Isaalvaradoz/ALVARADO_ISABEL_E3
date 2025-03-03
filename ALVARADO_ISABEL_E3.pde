//Movimiento pelota

float xPos;
float yPos;

float xSpeed = 2;
float ySpeed = 3;

int xDirection = 1;
int yDirection = 1;

void setup(){
  size(800,800);
  frameRate(200);
  
  //Inicializamos el objeto en la mitad de la pantalla
  xPos = width/2;
  yPos = height/2;
}

void draw(){
  background(#F7C8EC);
  
  //Cambia de dirección y cambia el color
  //Derecha
  if(xPos > width || xPos < 0){
    xDirection = xDirection * -1;
  }
  
  //Abajo
  if(yPos > width || yPos < 0){
    yDirection = yDirection * -1;
  }
  
  stroke(0);
  strokeWeight(2);
  circle(xPos,yPos,50);
  
  //Mueve la bola
  xPos = xPos + (xSpeed * xDirection);
  yPos = yPos + (ySpeed * yDirection);
}
