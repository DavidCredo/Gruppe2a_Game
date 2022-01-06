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
  int obstacleWidth = 100;
  for (int i = 0; i < xKoordinaten.length; i++) {
    fill(#DA3E52);
    ellipseMode(CENTER);
    ellipse(xKoordinaten[i], yKoordinaten[i], obstacleWidth, obstacleWidth);
  }
}
