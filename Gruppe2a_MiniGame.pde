float[] xKoordinaten = new float[20];
float[] yKoordinaten = new float[20];
boolean isStart = true;
boolean isPlaying = false;
boolean isPause = false;
boolean gameOver = false;
PVector position = new PVector(120, 120);
PVector velocity = new PVector(0, 0);
int score = 0;
int playerWidth = 100;
PFont font;
int amountOfObstacles = 10;

void setup() {
  music = new SoundFile(this, "Sci-Fi-Dramatic-Theme.mp3");
  font = createFont("Outerorbit-rggRL.ttf", 32, true);
  textFont(font);
  for (int i = 0; i < 100; i++) {
    balls.add(new Ball(3, color(random(255))));
  }
  for (int i = 0; i < amountOfObstacles; i++) {
    Obstacles.add(new Ball(100, color(255)));
  }
  frameRate(60);
  fullScreen();
  background(#2d365e);
  textSize(150);
  textAlign(CENTER);
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
