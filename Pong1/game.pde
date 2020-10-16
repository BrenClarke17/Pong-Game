void game() {
  background(0);
  //paddles
  
  //left paddle
  fill(11, 214, 59);
  stroke(8, 124, 6);
  circle(leftx, lefty, leftd);
  
  
  //right paddle
  stroke(6, 106, 203);
  fill(6, 162, 203);
  circle(rightx, righty, rightd);
  
  //move paddles 
  if (wkey == true) lefty = lefty -5;
  if (skey == true) lefty = lefty +5;
  
  
   if (upkey == true) righty = righty -5;
    if (downkey == true) righty =righty +5;
  
  //ball
 strokeWeight(5);
  fill(255);
  stroke(130);
  circle(ballx, bally, balld);
  
  ballx = ballx + vx;
bally = bally + vy;
   
  if (bally < d/2 || bally > height -d/2) vy = vy * -1;

if (ballx < 0) {
   rscore ++;
  ballx = width/2;
  bally = height/2;
   vx = 3;
  
 }
 
 if (ballx > width) {
 lscore ++;
 ballx = width/2;
  bally = height/2;
   vx = 3;
   
 }

if ( dist(leftx, lefty, ballx, bally) <= leftd/2 + balld/2) {
 
vx = (ballx - leftx) /20;
vy = (bally - lefty) /20;
}

if ( dist(rightx, righty, ballx, bally) <= rightd/2 + balld/2) {
 
 vx = (ballx - rightx) /20;
vy = (bally - righty) /20;
}

textSize(30);
text("Score", 400, 100);
text(+rscore, 500, 100); 
text(+lscore, 300, 100); 



}

void gameclicks() {
}
