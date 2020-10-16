void intro() {
  background(180);
  
  //Intro ball
  strokeWeight(5);
  stroke(6, 106, 203);
  fill(6, 162, 203);
  circle(x, y, d);
  
  
  
  fill(0);
  
  if (mouseX > 300 && mouseX < 500 && mouseY > 300 && mouseY < 400) {

  stroke(6, 106, 203);
 } else {
    stroke(0);
  }
  
  rect(300, 300, 200, 100);
  fill(0);
  textSize(100);
  text("PONG", 400, 150);
  fill(255);
  text("PONG", 395, 145);
 
  //Start
  textSize(75);
  fill(255);
  text("PLAY", 400, 350);
 
  
  
  
  
  //Intro ball moving
  x = x + vx;
y = y + vy;

  if (y < d/2 || y > height -d/2)  vy = vy * -1;
if (x < d/2 || x > width-d/2)   vx = vx * -1;
  
  
}

void introclicks() {
  
  //Start button
 if (mouseX > 300 && mouseX < 500 && mouseY > 300 && mouseY < 400) {
mode = GAME;
}

if (mouseX > 300 && mouseX < 500 && mouseY > 300 && mouseY < 400) {

  stroke(6, 106, 203);
 } else {
    stroke(0);
  }

}
