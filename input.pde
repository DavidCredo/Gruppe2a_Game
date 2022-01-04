PVector inputVector() {
    PVector directionVector = new PVector(0,0);
    if (keyPressed) {
        if (key == 'w') {
           directionVector.set(0, -10);
        } else if(key == 'a') {
             directionVector.set(-10, 0);
        } else if(key == 's') {
            directionVector.set(0, 10);
        } else if(key == 'd') {
            directionVector.set(10, 0);
        }
    }
    return directionVector; 
}

void inputBewegung() {
  if (keyPressed) {
    if (key == 'd' && x <= width -75) {    //abfrage nach der gedrückten Taste und ob Figur sich innerhalb des SPielbereichs befindet
      // bei "d" und "s" wird Figur die gewechselt, weil sich die Laufrichtung ändert
      Figur1 = true;
      Figur2 = false;

      x+= 5;
    } else if ( key == 's' && y <= height - 106) {      //Abfrage ob im Spielbereich, keine änderung der links/rechts richtung -> keine Änderung der Figur

      y+=5;
    } else if (key == 'a' && x >= 75) {

      Figur1=false;
      Figur2= true;

      x-=5;
    } else if (key == 'w' && y >= 82) {
      y-=5;
    }
  }
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
      livePoints = 100;
      x= 100;
      y= 100;
      makeObstacles();
    }
  }
}


void MausSteuern(){
  if(mousePressed){
    position.x=mouseX;
    position.y=mouseY;
  }
  
}
