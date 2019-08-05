//creates ball that appears at random xy
class Ball{
  
  float circleX = (random(width));
  float circleY = (random(height));
  float xSpeed = (random(-3,3));
  float ySpeed = (random(-3,3));
  float teleWidth = (width/2);
  float teleHeight = (height/2);
  
  void displayBall(){
    stroke(255);
    noFill();
    ellipse(circleX,circleY,24,24);
  }
  
    void displayBallFlash(){
    stroke((random(255)));
    noFill();
    ellipse(circleX,circleY,24,24);
  }
  
  void displayResizedBalls(){
    stroke((random(254)));
    noFill();
    ellipse(circleX, circleY, (random(1,30)), (random(1,30)));
  }
  
  void edgeBounce(){
    if(circleX >= width || circleX <= 0){
      xSpeed = xSpeed * -1;
    }
    if(circleY >= height || circleY <=0){
      ySpeed = ySpeed * - 1;
    }
  }
  
  void moveBall(){
    circleX += xSpeed;
    circleY += ySpeed;
  }
  
  void wiggleBall(){
    circleX += xSpeed;
    circleY += ySpeed;
    circleX += (random(-3,3));
    circleY += (random(-3,3));
  }
  
    void edgeTeleport(){
    if(circleX >= width || circleX <= 0){
      circleX = teleWidth;
      circleY = teleHeight;
    }
    if(circleY >= height || circleY <= 0){
      circleY = teleHeight;
      circleX = teleWidth;
    }
  }
  
}
