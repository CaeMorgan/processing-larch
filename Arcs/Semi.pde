class Semi{
 
  float xPos = (width/2);
  float yPos = (height);
  float semiWidth = 500;
  float semiHeight;
  
  Semi(float xSet){
    xPos = xSet;
  }
    
  void drawSemi(){
    //keeps arc dimensions proportional
    semiHeight = semiWidth;
    stroke((random(1,300)));
    noFill();
    //x, y, width, height, arc, arc
    arc(xPos,yPos,semiWidth,semiHeight,PI,TWO_PI);
  }
  
  void randomSemiX(){
    semiWidth += (random(0,80));
  }
  
  void checkEdges(){
    if (semiWidth > width){
      semiWidth = 500;
    }
  }
}
