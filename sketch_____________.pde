float ballx,bally,ballz;
float speedx,speedy;
int score;

void setup(){
  ballx = 250;
  bally = 500;
  ballz = 50;
  speedx = int(random(5,15));
  speedy = int(random(-5,-15));
  size(1000,1000);
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
if(key== 'a'){
     speedx = int(random(-10,10));
  speedy = int(random(2,10));
  fill(255,0,0);{
  textSize(100);
  text("You are cheating",50,850);
    textSize(random(12,36));
    text(int(random(10)),random(width),random(height));
 }
}
rect(mouseX-100,900,200,30);
if(ballx-100 < mouseX && mouseX < ballx+100 && bally > 885 && bally < 915){
  speedx *= -1;
  speedy *= -1;
     speedx = int(random(-100,100));
  speedy = int(random(-20,-100));
  score ++;
}
if(bally > height){
  textSize(150);
  text("GAMEOVER",100,250);
  if(score == 0){
textSize(150);
text("lank NOOB",100,500);
textSize(50);
text("retry to crick mouse",100,750);
  }
  else if(score <= 5){
    textSize(150);
text("lank NORMAL",100,500);
textSize(50);
text("retry to crick mouse",100,750);
  }
  else if (score == 7){
    textSize(50);
    text("You are lucky",700,900);
    textSize(50);
text("retry to crick mouse",100,750);
  }
  else if(score <= 15 && score >5){
  textSize(150);
  text("lank PRO",100,500);
  textSize(50);
text("retry to crick mouse",100,750);
  }
  else{
    textSize(150);
  text("lank GOD",100,500);
  textSize(50);
text("Mouse press",100,750);
  }
  if(mousePressed){
  ballx = 250;
  bally = 500;
  ballz = 50;
  speedx = int(random(5,15));
  speedy = int(random(-5,-15));
  score = 0;
  }
}
textSize(100);
text(score,50,100);
}
