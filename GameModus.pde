void Spiel () {
  rectMode(CORNERS);
  rect(0, 0, width, height);
  FeldAnimation();
  fill (#1b1730);
  rect(50, 50, width - 50, height - 50);
  fill(255);
  MausSteuern();
  calculateVelocity();
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
  text("Pause", width/2, 400);
  textSize(50);
  text("Press i to resume", width/2, 700);
  text("Press x to get back to menu", width/2, 900);
  triggerMenu();
}

void StartScreen() {
  velocity.set(0, 0);
  background(0);
  background(#141E50);
  textSize(width * 0.05);
  text("SpaceBalls", width/2, 400);
  textSize(25);
  text("Press M to Start", width/2, height/2);
  titleScreenLoop();
  fill(255);
  gameOver = false;
  toggleMaxVelocity();
  textSize(50);
  text("velocity setting " + vMax, width / 2, height - 200);
  textSize(25);
  rectMode(CENTER);
  text("press up press down", width /2 + 450 , height - 140, 250, 200);
  showScore();
}

void gameOverScreen() {
  background(#FF4500);
  fill(255);
  textSize(100);
  text("Game Over!", width/2, 400);
  textSize(50);
  text("Press X to get back to menu", width/2, 700);
  velocity.set(0, 0);
  saveScore();
}
