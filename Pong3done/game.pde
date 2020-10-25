void game() {
  background(0);


  //line down the middle
  fill(255);
  line(400, 600, 400, 0);

  //paddles

  //left paddle
  fill(11, 214, 59);
  stroke(8, 124, 6);
  circle(leftx, lefty, leftd); //r =100


  //right paddle
  stroke(6, 106, 203);
  fill(6, 162, 203);
  circle(rightx, righty, rightd);

  //move paddles 
  if (wkey == true) lefty = lefty -5;
  if (skey == true) lefty = lefty +5;

  if (AI == false) {
    if (upkey == true) righty = righty -5;
    if (downkey == true) righty =righty +5;
  } else {
    if (bally > righty + 100) {
      righty = righty +2;
    }
    if (bally < righty -100) {
      righty = righty -2;
    }
  }




  //left paddle block
  if (lefty > height-100) {
    lefty = lefty -5;
  }
  if (lefty < 100) {
    lefty = lefty +5;
  }
  //Right Paddle block
  if (righty > height-100) {
    righty = righty -5;
  }
  if (righty < 100) {
    righty = righty +5;
  }






  //ball
  strokeWeight(5);
  fill(255);
  stroke(130);
  circle(ballx, bally, balld);

  //move ball
  if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }

  if (bally < d/2 || bally > height -d/2) {
    wall.rewind();
    wall.play();
    vy = vy * -1;
  }

  if (ballx < 0) {
    rscore ++;
    ballx = width/2;
    bally = height/2;
    vx = 5;
    timer = 100;
    score.rewind();
    score.play();
  }

  if (ballx > width) {
    lscore ++;
    ballx = width/2;
    bally = height/2;
    vx = 5;
    timer = 100;
    score.rewind();
    score.play();
  }

  //bouncing

  if ( dist(leftx, lefty, ballx, bally) <= leftd/2 + balld/2) {

    vx = (ballx - leftx) /20;
    vy = (bally - lefty) /20;
    leftpaddle.rewind();
    leftpaddle.play();
  }

  if ( dist(rightx, righty, ballx, bally) <= rightd/2 + balld/2) {

    vx = (ballx - rightx) /20;
    vy = (bally - righty) /20;
    rightpaddle.rewind();
    rightpaddle.play();
  }

  //scoreboard
  textSize(30);
  text("Score", 400, 100);
  text(+rscore, 500, 100); 
  text(+lscore, 300, 100); 
  //text(timer, 300, 550);  
  timer = timer -1;



  if (rscore == 3) {
    mode = GAMEOVER;
  }
  if (lscore == 3) {
    mode = GAMEOVER;
  }
}

void gameclicks() {
}
