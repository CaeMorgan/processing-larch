//sets number of balls to be drawn
Ball[] ballPit = new Ball[1000];

void setup(){
  //set size of window and renderer
  size(1920,1080,P2D);
  //add ball objects to array
  for(int i = 0; i < ballPit.length; i++){
    ballPit[i] = new Ball();
  }
}

void draw(){
  //redraw background every frame
  background(0);
  //iterate through selected ball functions for every ball in array
  for (Ball b : ballPit){
    //draws ball
    //b.displayBall();
    //display flashing, randomly sized balls
    b.displayResizedBalls();
    //draws flashing balls
    //b.displayBallFlash();
    //bounces ball off edge of window
    b.edgeBounce();
    //moves ball in random direction
    //b.moveBall();
    //moves ball in random direction, introduces jitter
    b.wiggleBall();
    //teleports balls from edge of screen to center
    b.edgeTeleport();
    
    //output frames as .png to output folder (extremely slow!)
    //saveFrame("output/ball_####.png");
  }
}
