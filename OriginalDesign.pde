float move;
int topHatY;
int topHatYx;

void setup(){
  size(500, 500);
}

void draw(){
  background(196, 253, 255);
  head();
  topHat();
}

void head(){
  stroke(0, 0, 0);
  fill(250, 250, 0);
  strokeWeight(2);
  ellipse(250, 250, 300, 300);
  strokeWeight(4);
  arc(250, 270, 200, 150, 0, PI);
  fill(255, 255, 255);
  ellipse(220, 220, 50, 100);
  ellipse(280, 220, 50, 100);
  fill(0, 0, 0);
  ellipse(220, 250, 20, 20);
  ellipse(280, 250, 20, 20);
}

void topHat(){
  stroke(0, 0, 0);
  fill(0, 0, 0);
  translate(width*2/3, 140);
  rotate(0.63);
  rectMode(CENTER);
  ellipse(0, topHatY, 180, 50);
  rect(0, topHatY-60, 90, 90);
  fill(160, 0, 0);
  stroke(160, 0, 0);
  rect(0, topHatY-35, 91, 20);
   moveHat();
}

void moveHat(){
  topHatY += topHatYx; 
  if (topHatY == 0){
    topHatYx = round(random(-6, -1));
  }
  if (topHatY == -60){
    topHatYx = round(random(1, 2)); 
  }
}
