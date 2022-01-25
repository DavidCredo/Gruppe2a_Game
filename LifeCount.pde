//Logik für die Spieler Health
int healthPoints = 100;
//Funktion ermittelt ob Kollision vorliegt, wenn ja, werden die HP vermindert.
void takeDamage() {
  if (checkCollision() && healthPoints >= 0) {
    println("Current HP: " + healthPoints);
    healthPoints -= 10;
  }
  // Sobald HP = 0, ist das Spiel verloren. gameOver Screen wird angezeigt.
  if (healthPoints == 0) {
    println("Zoinks, 0 HP!");
    gameOver = true;
    isPlaying = false;
  }
}
