String[] scorearray = new String[1];
String currentScore;


void countScore() {   // hier wird der aktuelle score berechnet. 1 score punkt pro sekunde, da das Program mit 60fps läuft.
  score = frameCount/60;
}

void saveScore() {
  if (score > 0 ) {
    currentScore = String.format("Last Games Highscore: %d", score);
    scorearray[0] = currentScore;
    saveStrings("score.txt", scorearray);   // der score der Partie wird hier in eine Texdatei gespeichert.
  }
  else {                                    // falls der Score kleiner als 0 ist wird eine neue Texdatei angelegt und die Meldung ausgeben, dass kein letztes Game gefunden wurde.
     currentScore = String.format("No last game detected");
    scorearray[0] = currentScore;
    saveStrings("score.txt", scorearray);
}
}


  void showScore() {

    try {
      String[] lines = loadStrings("score.txt");
      text(lines[0], width/2, 900);  //hier wird der score des letzen Spiels aus der Texdatei ausgelesen und angezeigt.
    }
    catch(NullPointerException e) {     //falls es noch keine Texdatei gibt wird das Spiel trotzdem gestartet 
      saveScore();
    }
  }