boolean Figur1= true;
boolean Figur2= false;

void Figur() {
  noStroke();
  //Beine
  if (Figur1) {

    fill(255, 0, 0);
    //Beine
    rectMode(CORNERS);
    //linkes Bein
    rect(x-25, y+25, x-5, y+55);
    //rechtes Bein
    rect(x+5, y+25, x+25, y+55);

    //Körper
    rectMode(CENTER);
    rect(x, y, 50, 60);


    //Augen oder Visier nach rechts
    fill(180);
    rectMode(CORNERS);
    rect(x+27, y-20, x-5, y);


    //Rucksack oder Sauerstofftank
    fill(255, 0, 0);
    rect(x-25, y-20, x-45, y+20);
    inputBewegung();
  } else if (Figur2) {

    fill(255, 0, 0);
    //Beine
    rectMode(CORNERS);
    //linkes Bein
    rect(x-25, y+25, x-5, y+55);
    //rechtes Bein
    rect(x+5, y+25, x+25, y+55);

    //Körper
    rectMode(CENTER);
    rect(x, y, 50, 60);


    //Augen oder Visier nach rechts
    fill(180);
    rectMode(CORNERS);
    rect(x-27, y-20, x+5, y);


    //Rucksack oder Sauerstofftank
    fill(255, 0, 0);
    rect(x+25, y-20, x+45, y+20);

    inputBewegung();
  }
}
