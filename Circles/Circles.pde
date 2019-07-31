//change value of numberOfBalls to spawn different number of balls
int numberOfBalls = 100;
//parameters for program use
ArrayList<Ball> ballPit = new ArrayList<Ball>();

void setup(){
  // set size of window
  size(1920, 1080);
  // set colour of background
  background(0);
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
    b.displayBall();
    //bounces ball off edge of window
    b.edgeBounce();
    //moves ball in random direction
    //b.moveBall();
    //moves ball in random direction, introduces jitter
    b.wiggleBall();
  }
}
