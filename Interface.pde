void lebensAnzeige() {  //die hp Anzeige
  showDate();
  textSize(30);
  text("Leben:", 50, height -20 );
  fill(255, 0, 0);
  //je nach Lebenspunkten werden 3, 2, oder 1 Herzen angezeigt.
  if (lifePoints > 50) {
    drawHeart(100, height - 50);
    drawHeart(40, 0);
    drawHeart(40, 0);
  }
  if (lifePoints > 25 && lifePoints <= 50) {
    drawHeart(100, height - 50);
    drawHeart(40, 0);
  }
  if (lifePoints <= 25) {
    drawHeart(100, height - 50);
  }
}

/*Funktion die die Herzen für die Lebensanzeige zeichnet. Nimmt 2 float Werte um translate() richtig anzusteuern.
 Dadurch kann die gleiche Funktion mehrmals aufgerufen werden, aber mit anderen Koordinaten für die Herzen.
 Somit kann die Lebensanzeige variabel gesteuert werden
 */
void drawHeart(float xPosition, float yPosition) {
  translate( xPosition, yPosition);
  noStroke();
  fill(255, 0, 0);
  beginShape();
  vertex(45, 10);
  bezierVertex(45, -10, 85, 0, 45, 35); //Herz Rechts
  vertex(45, 10);
  bezierVertex(45, -10, 5, 0, 45, 35); //Herz Links
  endShape();
}

//Zeigt die aktuelle Zeit und Datum an.
void showDate() {
  int year = year();
  int month = month();
  int day = day();
  int hour = hour();
  int minute = minute();
  int second = second();
  fill(255);
  text(year + " - " + month + " - " + day, 400, height - 25);
  text(hour + " - " + minute + " - " + second, 600, height -25);
}
