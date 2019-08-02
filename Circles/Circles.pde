//change value of numberOfBalls to spawn different number of balls
int numberOfBalls = 1000;
//parameters for program use
ArrayList<Ball> ballPit = new ArrayList<Ball>();

void setup(){
  // set size of window
  size(1920, 1080);
  //add (numberOfBalls) ball objects to array
  for(int x = 0; x++ < numberOfBalls; ballPit.add(new Ball())){
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
