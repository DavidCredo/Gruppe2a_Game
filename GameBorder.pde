int blubbGroeße = 0;

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
  background(50);
  fill(#DE0B0B);
  noStroke();


  //hier wird geguckt, ob die blasen groß/klein genug sind, um den Prozess umzukehren
  if (blubbGroeße>100) {
    blubbernHoch=false;
  }
  if (blubbGroeße<1) {
    blubbernHoch=true;
  }

  //hier werden die Blubberblasen gemalt
  for (int i = 0; i<20; i++) {
    ellipse(blubbXLinks[i], blubbYLinks[i], blubbGroeße/5, blubbGroeße/5);
    ellipse(blubbXHigh[i], blubbYHigh[i], blubbGroeße/5, blubbGroeße/5);
    ellipse(blubbXRight[i], blubbYRight[i], blubbGroeße/5, blubbGroeße/5);
  }
  //blasen werden größer bzw kleiner
  if (blubbernHoch == true) {
    blubbGroeße++;
  } else if (blubbernHoch == false) {
    blubbGroeße--;
  }
}
