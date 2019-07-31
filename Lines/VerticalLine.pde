class VerticalLine{
  
  float xPos;
  
  VerticalLine(int xVal){
    xPos = xVal;
  }
  
  void drawVerticalLines(){
    stroke(255);
    strokeWeight(2);
    line(xPos,0,xPos,height); 
  }
  
  void moveVerticalLines(){
    xPos = xPos + (random(-6,+6));
  }
}