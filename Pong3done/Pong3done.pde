import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Pong Game
//Brennan Clarke
//1,1
//Oct 15, 2020
//Mode Framework

Minim minim;
AudioPlayer clapping, intro, leftpaddle, rightpaddle, score, wall;


int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER= 4;

//entity variables
float leftx, lefty, leftd, rightx, righty, rightd; //Paddles
float ballx, bally, balld; //Ball

//keyboard variables
boolean wkey, skey, upkey, downkey;
boolean AI;


//Intro ball bounce
float vy;
float vx;
float x;
float y;
float d;

//Scoring
int rscore;
int lscore;
int timer;
void setup() {
  size(800, 600);
  mode =INTRO;
 textAlign(CENTER, CENTER);
  
  //intitalize paddles
  
  //left paddle
  leftx = 0;
  lefty = height/2;
  leftd = 200;
 
  //right paddle
  rightx = width;
  righty = height/2;
  rightd = 200;
  
  //intialize ball
  ballx = width/2;
  bally = height/2;
  balld = 50;
  
   //initialize keyboard vars
   wkey = skey = upkey = downkey = false;
   
   
   
   //intro initialize
  vx = 5;
  vy = 5;
  x = width/2;
  y = height/2;
  d = 75;
  
  
  
  
  //Score
  lscore = 0;
  rscore = 0;
  timer = 100;
  
  
  
  
  //music
  minim = new Minim(this);
  intro = minim.loadFile("intro.wav");
  leftpaddle = minim.loadFile("leftpaddle.wav");
  rightpaddle = minim.loadFile("rightpaddle.wav");
  wall = minim.loadFile("wall.wav");
  score = minim.loadFile("score.wav");
  clapping = minim.loadFile("clapping.wav");
}




void draw() {
 if (mode == INTRO) {
   intro();
 } else if (mode == GAME) {
   game();
 } else if (mode == PAUSE) {
   pause();
 } else if (mode == GAMEOVER) {
   gameover();
  } else {
    println("mode error: " + mode);
  }
  











}
