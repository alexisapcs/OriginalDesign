/*float move;
int topHatY;
int topHatYx;

void setup(){
  size (500, 500);
  background(196, 253, 255);
  System.out.println(width*2/3);
  System.out.println(PI/5);
  System.out.println(topHatY);
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
    System.out.println(topHatYx);
  }
  if (topHatY == -60){
    topHatYx = round(random(1, 2)); 
  }
}*/
int x = 0;
int cx = 200;
int bx = 200;
int timer = 0;
char time = 'D';

void pillars(int px, int py) {
	fill(0,0,0);
	rect(px,py,20,250);
	rect(px-10,py + 245,40,5);
	rect(px-5, py + 235,30,10);
}

void suspend(int sx,int sy){
	noFill();
	arc(sx,sy,600,300,0,PI);

}


void setup()
{
  size(800,400);  
  background(250,250,210);
}

void draw(){
	
	if(time == 'D'){
		background(250,250,210);
		fill(0,24,72,timer/2);
		rect(0,0,800,400);
  	}
  	else if(time == 'N') {
  		background(0,24,72);
  		fill(250,250,210,(1000-timer)/2);
  		rect(0,0,800,400);
  	}
	noFill();
	rect(0,200,800,10);
	while(x <= 800) {
		line(x,200,x - 10,210);
		line(x,200,x + 10,210);
		x = x + 20;
	}
	x = 0;

	//car
	fill(255,0,0);
	rect(cx,188,30,10);
	rect(cx + 5,183,20,5);
	ellipse(cx + 5,198,5,5);
	ellipse(cx + 25,198,5,5);
	fill(114, 144, 191);
	rect(0,300,800,100);
	
	pillars(80,50);
	pillars(700,50);
	suspend(400,50);
	suspend(-220,50);
	suspend(1020,50);

	//boat
	fill(0,0,255);
	arc(bx,275,100,50,0,PI);
	line(bx,275,bx,225);
	fill(255);
	beginShape();
	vertex(bx - 30,235);
	vertex(bx,225);
	vertex(bx,245);
	endShape(CLOSE);

	//sun/moon

	if(time == 'D'){
		timer = timer + 1;
	}
	else {
		timer = timer - 1;
	}

	cx = cx + 2;
	bx = bx - 1;

	if(cx > 825) {
		cx = -50;
	}
	if(bx < -25) {
		bx = 850;
	}
	if(timer > 1000) {
		time = 'N';
	}
	if(timer < 0) {
		time = 'D';
	}
}
