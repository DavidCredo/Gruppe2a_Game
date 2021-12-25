//Arrays werden deklariert, um sie später mit zufälligen x und y Koordinaten zu füllen. Damit das nur am Spielrand passiert, werden verschiedene Arrays erzeugt.

int blubbGröße = 0;

int  [] blubbXLinks = new  int [20];
int  [] blubbYLinks = new int  [20];

int [] blubbXHigh = new int [20];
int [] blubbYHigh = new int [20];

int [] blubbXRight = new int [20];
int [] blubbYRight = new int [20];

boolean blubbernHoch = true;

//hier werden die x und y Koordinaten der BlubberBlasen erzeugt
void createBoarder() {
  for (int i =0; i<20; i++) {
    blubbXLinks[i] = int (random (50));
    blubbYLinks[i] = int (random (height));

    blubbXHigh[i] = int (random (width));
    blubbYHigh[i] = int (random (50));

    blubbXRight[i] = int (random(50)) + width-50;
    blubbYRight[i] = int (random(height));
  }
}

void FeldAnimation() {
  background(#ED7D0C);
  fill(#DE0B0B);
  noStroke();


  //hier wird geguckt, ob die blasen groß/klein genug sind, um den Prozess umzukehren
  if (blubbGröße>100) {
    blubbernHoch=false;
  }
  if (blubbGröße<1) {
    blubbernHoch=true;
  }

  //hier werden die Blubberblasen gemalt
  for (int i = 0; i<20; i++) {
    ellipse(blubbXLinks[i], blubbYLinks[i], blubbGröße/5, blubbGröße/5);
    ellipse(blubbXHigh[i], blubbYHigh[i], blubbGröße/5, blubbGröße/5);
    ellipse(blubbXRight[i], blubbYRight[i], blubbGröße/5, blubbGröße/5);
  }
  //blasen werden größer bzw kleiner
  if (blubbernHoch == true) {
    blubbGröße++;
  } else if (blubbernHoch == false) {
    blubbGröße--;
  }
}
