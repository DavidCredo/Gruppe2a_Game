// Funktion, die einen Vektor zurückgibt, relativ zum Tasteninput
PVector inputVector() {
  PVector directionVector = new PVector(0, 0); //directionVector wird genutzt um Richtung der Bewegung zu geben
  if (keyPressed) {
    if (key == 'w') {
      directionVector.set(0, -10);
    } else if (key == 'a') {
      directionVector.set(-10, 0);
    } else if (key == 's') {
      directionVector.set(0, 10);
    } else if (key == 'd') {
      directionVector.set(10, 0);
    }
  }
  return directionVector;
}

//Funktion um das Spiel zu pausieren/resume
void triggerPause() {
  if (keyPressed) {
    if (key == 'p' && !isStart && isPlaying) {
      isPause = true;
      isPlaying = false;
    } else if (key == 'i' && !isPlaying) {
      isPause = false;
      isPlaying = true;
    }
  }
}

//Funktion um aus dem Menü zu kommen oder bei GameOver wieder ins Menü zu gelangen.
void triggerMenu() {
  if (keyPressed) {
    if (key == 'm' && !isPause && !gameOver) {
      isStart = false;
      isPlaying = true;
    } else if (key == 'x' && gameOver) {
      isStart = true;
      isPlaying = false;
      isPause = false;
      lifePoints = 100;
      position.x= 100;
      position.y= 100;
      makeObstacles();
    }
  }
}

//Mouse Input zur Steuerung des Spielers
void MausSteuern() {
  if (mousePressed) {
    PVector MouseControl = new PVector (0, 0);
    MouseControl.x= mouseX-position.x;
    MouseControl.y= mouseY-position.y;
    MouseControl.normalize();
    MouseControl.mult(10);
    velocity.add(MouseControl);
  }
}
