//Logik für die Spieler Health
int lifePoints = 100;
//Funktion ermittelt ob Kollision vorliegt, wenn ja, werden die HP vermindert.
void takeDamage() {
  if (checkCollision() && lifePoints >= 0) {
    println("Current LifePoints: " + lifePoints);
    lifePoints -= 10;
  }
  // Sobald HP = 0, ist das Spiel verloren. gameOver Screen wird angezeigt.
  if (lifePoints == 0) {
    println("Zoinks, 0 LifePoints!");
    gameOver = true;
    isPlaying = false;
  }
}
