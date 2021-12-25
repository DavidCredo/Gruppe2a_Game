//Logik für die Spieler Health
int livePoints = 100;
//Funktion ermittelt ob Kollision vorliegt, wenn ja, werden die HP vermindert.
void takeDamage() {
  println(livePoints);
  if (checkCollision() && livePoints >= 0) {
    livePoints -= 1;
  }
  // Sobald HP = 0, ist das Spiel verloren. gameOver Screen wird angezeigt.
  if (livePoints == 0) {
    gameOver = true;
    isPlaying = false;
  }
}
