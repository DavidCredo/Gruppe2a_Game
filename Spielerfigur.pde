boolean Figur1= true;
boolean Figur2= false;
int rotate = 0;

void Figur() {
  velocity.add(acceleration);
  velocity.limit(10);
  position.add(velocity);
  noStroke();
  //Beine
  if (Figur1) {

    fill(255, 0, 0);
    //Beine
    rectMode(CORNERS);
    //linkes Bein
    rect(position.x-25, position.y+25, position.x-5, position.y+55);
    //rechtes Bein
    rect(position.x+5, position.y+25, position.x+25, position.y+55);

    //Körper
    rectMode(CENTER);
    rect(position.x, position.y, 50, 60);


    //Augen oder Visier nach rechts
    fill(180);
    rectMode(CORNERS);
    rect(position.x+27, position.y-20, position.x-5, position.y);


    //Rucksack oder Sauerstofftank
    fill(255, 0, 0);
    rect(position.x-25, position.y-20, position.x-45, position.y+20);
   
  } else if (Figur2) {

    fill(255, 0, 0);
    //Beine
    rectMode(CORNERS);
    //linkes Bein
    rect(position.x-25, position.y+25, position.x-5, position.y+55);
    //rechtes Bein
    rect(position.x+5, position.y+25, position.x+25, position.y+55);

    //Körper
    rectMode(CENTER);
    rect(position.x, position.y, 50, 60);


    //Augen oder Visier nach rechts
    fill(180);
    rectMode(CORNERS);
    rect(position.x-27, position.y-20, position.x+5, position.y);


    //Rucksack oder Sauerstofftank
    fill(255, 0, 0);
    rect(position.x+25, position.y-20, position.x+45, position.y+20);

 
  }
}
