boolean Figur1= true;
boolean Figur2= false;
float rotationAmount = 0;

void Figur() {
  velocity.add(acceleration);
  velocity.limit(10);
  position.add(velocity);
  Ufo();
}

void Ufo() {
  pushMatrix();
  translate(position.x,position.y);
  rotationAmount++;
  rotate(radians(-rotationAmount));
  fill(80);
  ellipse(0,0,100,100);
  for(int i = 0;i<=360;i+=45){
    if(i%90==0){
      fill(255,0,255);
    ellipse(38,0,15,15);
    }else{
    fill(0,255,255);
    ellipse(38,0,15,15);
    }
    rotate(radians(i));
  }
  fill(150);
  ellipse(0,0,50,50);
  popMatrix();
}
