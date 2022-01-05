void Spiel () {
  background(80);
  rectMode(CORNERS);
  rect(0, 0, width, height);
  FeldAnimation();
  fill (#2e1d03);
  rect(50, 50, width - 50, height - 50);
  fill(255);
  MausSteuern();
  calculateAcceleration();
  drawPlayer();
  checkBoarderCollision();
  placeObstacles(xKoordinaten, yKoordinaten);
  takeDamage();
  lebensAnzeige();
  countScore();
}

void PauseScreen() {
  fill(#E3D39E);
  background(#141E50);
  textSize(100);
  text("Pause", width/2, 200);
  text("Press i to resume", width/2, height/2);
}

void StartScreen() {
  background(#141E50);
  fill(#E3D39E);
  textSize(100);
  text("Press M to Start", width/2, 200);
  gameOver = false;
  showScore();
}

void gameOverScreen() {
  background(#FF4500);
  fill(255);
  textSize(100);
  text("Game Over! Press X to get back to menu", width/2, 200);
  velocity.set(0, 0);
  saveScore();
}
