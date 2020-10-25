void intro() {
  background(180);
  clapping.pause();
  intro.play();
  //Intro ball
  strokeWeight(5);
  stroke(6, 106, 203);
  fill(6, 162, 203);
  circle(x, y, d);
  
  
  
  fill(0);
  
  if (mouseX > 100 && mouseX < 300 && mouseY > 300 && mouseY < 400) {

  stroke(6, 106, 203);
 } else {
    stroke(0);
  }
  //singleplayer button
  rect(100, 300, 200, 100);
  
  
  
  if (mouseX > 500 && mouseX < 700 && mouseY > 300 && mouseY < 400) {

  stroke(6, 106, 203);
 } else {
    stroke(0);
  }
  
  
  //multiplayer button
   rect(500, 300, 200, 100);
   
  fill(0);
  textSize(100);
  text("PONG", 400, 150);
  fill(255);
  text("PONG", 395, 145);
 
  //Start
  textSize(25);
  fill(255);
  text("SINGLE PLAYER", 200, 350);
  text("MULTIPLAYER", 600, 350);
 
  
  
  
  
  //Intro ball moving
  x = x + vx;
y = y + vy;

  if (y < d/2 || y > height -d/2)  vy = vy * -1;
if (x < d/2 || x > width-d/2)   vx = vx * -1;
  
  
}

void introclicks() {
  
  //Singleplayer button
 if (mouseX > 100 && mouseX < 300 && mouseY > 300 && mouseY < 400) {
mode = GAME;
intro.pause();
intro.rewind();
AI = true;
}

// Mulitplayer button
if (mouseX > 500 && mouseX < 700 && mouseY > 300 && mouseY < 400) {
mode = GAME;
intro.pause();
intro.rewind();
AI = false;
}


}
