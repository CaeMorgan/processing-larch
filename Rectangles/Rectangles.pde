float spacing = 50;

void setup(){
  //set size of window and renderer
  size(1920,1080,P2D);
}

void draw(){
  background(0);
  spacing += random(-3,+3);
  if (spacing < 10 || spacing > 100){
    spacing = 50;
  }
  
  strokeWeight(2);
  stroke(255);
  for (float y = 0; y < height; y += spacing){
    for (float x = 0; x < width; x += spacing){
      noFill();
      rect(x, y, 20, 20);
    }
  }
}
