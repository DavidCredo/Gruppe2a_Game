//
void calculateVelocity() {
  PVector acceleration = inputVector().normalize(); //Richtungsvektor wird mit acceleration gleichgesetzt, da der Spieler keine "Masse" hat
  acceleration.mult(0.5); //Acceleration wird bei jedem Aufruf mit 0.5 multipliziert
  velocity.add(acceleration);
  position.add(velocity);
  velocity.limit(10); //Damit die velocity nicht endlos groß wird, wird die limit() Funktion mit 10 aufgerufen
}

//checkt ob eine Kollision mit einer Spielbegrenzung oder einem Hindernis vorliegt
void checkBoarderCollision() {
  if (position.x >= width -100 || position.x <= 100 || checkCollision() ) {
    velocity.x *= -1.1;
  }
  if (position.y >= height - 106 || position.y <= 100 || checkCollision()) {
    velocity.y *= -1.1;
  }
}
