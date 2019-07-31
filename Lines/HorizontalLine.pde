class HorizontalLine{
  
  float yPos;
    
  HorizontalLine(int yVal){
    yPos = yVal;
  }
  
  void drawHorizontalLines(){
    stroke (255);
    strokeWeight(2);
    line(0,yPos,width,0);
  }
  
  void moveHorizontalLines(){
    yPos = yPos + (random(-6,+6));
  }
}
