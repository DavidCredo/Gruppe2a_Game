float[] xKoordinaten = new float[20];
float[] yKoordinaten = new float[20];
boolean isStart = true;
boolean isPlaying = false;
boolean isPause = false;
boolean gameOver = false;
PVector position = new PVector(120, 120);
PVector velocity = new PVector(0, 0);
int score = 0;

void setup() {
  frameRate(60);
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
