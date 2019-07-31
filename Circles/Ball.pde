//creates ball that appears at random xy
class Ball{
  
float circleX = (random(width));
float circleY = (random(height));
float xSpeed = (random(-3,3));
float ySpeed = (random(-3,3));

void displayBall(){
  stroke(255);
  fill(0);
  ellipse(circleX,circleY,24,24);
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
  circleX = circleX + xSpeed;
  circleY = circleY + ySpeed;
}

void wiggleBall(){
  circleX = circleX + xSpeed;
  circleY = circleY + ySpeed;
  circleX = circleX + (random(-3,3));
  circleY = circleY + (random(-3,3));
}
}
