int rotationAmount = 0;

//Zeichnet den Spieler
void drawPlayer() {
  pushMatrix();
  translate(position.x, position.y);
  rotationAmount++;
  rotate(radians(-rotationAmount)); //Nutzt rotate() um das resultierende Ufo permanent um die eigene Achse rotieren zu lassen
  fill(80);
  ellipse(0, 0, playerWidth, playerWidth);
  for (int i = 0; i<=360; i+=45) {
    if (i%90==0) {
      fill(255, 0, 255);
      ellipse(38, 0, 15, 15);
    } else {
      fill(0, 255, 255);
      ellipse(38, 0, 15, 15);
    }
    rotate(radians(i));
  }
  fill(150);
  ellipse(0, 0, 50, 50);
  popMatrix();
}
