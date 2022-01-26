/*ArrayList mit Objekten vom Typ Ball
Alternativ hätte man auch noch eine child-Klasse von "Ball" schreiben können,
um Besonderheiten der Obstacles dort separat zu behandeln. Aus Zeitmangel wurde dies nicht mehr umgesetzt.
*/

ArrayList<Ball> Obstacles = new ArrayList<Ball>();
 void showObstacles() {
         for (int i = 0; i < Obstacles.size(); i++) {
        Obstacles.get(i).update();
        Obstacles.get(i).collideWithObject(); 
        handleCollision(Obstacles);
        Obstacles.get(i).checkBoarderCollision();
        
    }
    
    for (int j = 0; j < Obstacles.size(); j++) {
          Obstacles.get(j).display();
      }
    }


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
    fill(255);
    ellipseMode(CENTER);
    ellipse(xKoordinaten[i], yKoordinaten[i], obstacleWidth, obstacleWidth);
  }
}

//Überprüft, ob der Spieler mit einem Hindernis kollidiert.
boolean checkCollision() {
 

  for (int i = 0; i < Obstacles.size(); i++) {
    float distX = position.x - Obstacles.get(i).location.x;
    float distY = position.y - Obstacles.get(i).location.y;
    float distance = sqrt((distX * distX) + (distY * distY));
    if (distance <= playerWidth) {
      return true;
    }
  }
  return false;
}

