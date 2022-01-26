float vMax = 10;

void calculateVelocity() {
  PVector acceleration = inputVector().normalize(); //Richtungsvektor wird mit acceleration gleichgesetzt, da der Spieler keine "Masse" hat
  acceleration.mult(0.5); 
  velocity.add(acceleration);
  position.add(velocity);
  velocity.limit(vMax); //Damit die velocity nicht endlos groß wird, wird die Länge des Vektors limitert auf 10
}

//Überprüft ob eine Kollision mit einer Spielbegrenzung oder einem Hindernis vorliegt
void checkBoarderCollision() {
  if (position.x >= width -100 || position.x <= 100 || checkCollision() ) {
    velocity.x *= -1.1;
  }
  if (position.y >= height - 106 || position.y <= 100 || checkCollision()) {
    velocity.y *= -1.1;
  }
}
