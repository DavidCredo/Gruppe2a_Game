String[] highscore = new String[1];
String currentHighScore;


void countScore() {
    score = frameCount/60;
}

void saveScore() {
    currentHighScore = String.format("Last Games Highscore: %d", score);
    highscore[0] = currentHighScore;
    saveStrings("highscore.txt", highscore);
}

