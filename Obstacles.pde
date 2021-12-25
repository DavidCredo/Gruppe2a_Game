//Befüllt zwei Arrays mit zufälligen floats für die Koordinaten der Hindernisse.
void makeObstacles() {
  for (int i = 0; i < xKoordinaten.length; i++) {
    xKoordinaten[i] = random(200, width - 200);
    yKoordinaten[i] = random(200, height - 200);
  }
}

/*Platziert die Hindernisse, durch Trennung der Funktionen werden zwei Objektiven erzielt =>
 1. Separation of Concerns
 2. Die Koordinaten können in setup() erstellt werden und werden somit nicht in jedem draw
 Durchlauf neu generiert.
 */
void placeObstacles (float[] xKoordinaten, float[] yKoordinaten) {
  for (int i = 0; i < xKoordinaten.length; i++) {
    fill(#960000);
    ellipseMode(CENTER);
    ellipse(xKoordinaten[i], yKoordinaten[i], obstacleWidth, obstacleWidth);
  }
}

//Überprüft, ob der Spieler mit einem Hindernis kollidiert.
boolean checkCollision() {
  for (int i = 0; i < xKoordinaten.length; i++) {
    if (dist(position.x, position.y, xKoordinaten[i], yKoordinaten[i]) <=  obstacleWidth/2) {
      return true;
    }
  }
  return false;
}
