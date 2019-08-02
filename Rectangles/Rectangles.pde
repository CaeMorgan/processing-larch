float spacing = 50;

void setup(){
size(1920,1080);
}

void draw(){
background(0);

 spacing = spacing + random(-3,+3);
  if (spacing < 10 || spacing > 100){
    spacing = 50;
  }
  
strokeWeight(2);
stroke(255);
  for (float y = 0; y < height; y = y + spacing){
    for (float x = 0; x < width; x = x + spacing){
      noFill();
      rect(x, y, 20, 20);
    }
  }
}
