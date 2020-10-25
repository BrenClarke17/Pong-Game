void gameover() {
  clapping.play();
  textSize(80);
  if (lscore > rscore) {
   fill(11, 214, 59);
  text("LEFT", 250, 250);
  text("PLAYER", 550, 250);
  text("WINS", 400, 360);
  } else if (rscore > lscore) {
    fill(6, 162, 203);
    text("RIGHT", 250, 250);
  text("PLAYER", 550, 250);
  text("WINS", 400, 360);
  }


}

void gameoverclicks() {
  mode = INTRO;
  reset();
}
