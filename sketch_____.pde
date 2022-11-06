float ballx,bally,ballz;
float speedx,speedy;

void setup(){
  ballx = 250;
  bally = 500;
  ballz = 50;
  speedx = 1;
  speedy = -2;
  size(750,750);
}
void draw(){
  background(0);
  circle(ballx,bally,ballz);
  ballx += speedx;
  bally += speedy;
if(ballx + ballz/2 >width){
  speedx *= -1;
}
if(ballx - ballz/2 < 0){
  speedx *= -1;
}
if(bally - ballz/2-12.5 < 0){
  speedy *= -1;
}
if(bally+12.5 - ballz/2 > height){
  speedy *= -1;
}

}
