/*ArrayList mit Objekten vom Typ Ball
 Alternativ hätte man auch noch eine child-Klasse von "Ball" schreiben können,
 um Besonderheiten der Obstacles dort separat zu behandeln. Aus Zeitmangel wurde dies nicht mehr umgesetzt.
 */

ArrayList<Ball> Obstacles = new ArrayList<Ball>();
void showObstacles() {
  for (int i = 0; i < Obstacles.size(); i++) {
    Obstacles.get(i).update();
    handleCollision(Obstacles);
    Obstacles.get(i).checkBoarderCollision();
  }

  for (int j = 0; j < Obstacles.size(); j++) {
    Obstacles.get(j).display();
  }
}

//Überprüft, ob der Spieler mit einem Hindernis kollidiert.
boolean checkCollision() {
  for (int i = 0; i < Obstacles.size(); i++) {
    float distX = position.x - Obstacles.get(i).location.x;
    float distY = position.y - Obstacles.get(i).location.y;
    float distance = sqrt((distX * distX) + (distY * distY));
    if (distance < playerWidth + 5) {
      return true;
    }
  }
  return false;
}

//Um Kollisionen der Hindernisse mit dem Spieler zu handlen, haben wir die Logik aus der handleCollision() Funktion in titleScreenEffects.pde abgewandelt.
//Diese Lösung ist in sofern suboptimal, dass man die ursprüngliche Funktion nicht wiederverwendet. Durch Refactoring des Codes wäre das Problem jedoch leicht behoben.

void handleObstacleCollisionOnPlayer(ArrayList<Ball> obstacs) {
  Ball obstacle;
  for (int i = 0; i < obstacs.size(); i++) {
    obstacle = obstacs.get(i);
    if (checkCollision()) {

      obstacle.isColliding = true;

      PVector collisionNormal = PVector.sub(obstacle.location, position);
      collisionNormal.normalize();

      obstacle.velocity.add(collisionNormal);
      velocity.sub(collisionNormal);
    }
  }
}
