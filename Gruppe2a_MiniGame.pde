float[] xKoordinaten = new float[20];
float[] yKoordinaten = new float[20];
int obstacleWidth = 100;
boolean isStart = true;
boolean isPlaying = false;
boolean isPause = false;
boolean gameOver = false;
int x = 100;
int y = 100;
PVector position = new PVector(20,20);
PVector velocity = new PVector(0,0);
PVector acceleration = new PVector(0,0);

void setup() {
  fullScreen();
  background(#485698);
  textSize(150);
  textAlign(CENTER);
  makeObstacles();
  createBoarder();
  playMusic();
}

void draw() {
  toggleMusic();
  if (isStart) {
    StartScreen();
    triggerMenu();
  } else if (isPlaying) {
    Spiel();
    triggerPause();
  } else if (isPause) {
    PauseScreen();
    triggerPause();
  } else if (gameOver) {
    gameOverScreen();
    triggerMenu();
  }
}
