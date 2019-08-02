int numberOfSemis = 1;
ArrayList<Semi> semiList = new ArrayList<Semi>();

void setup(){
  size(1920,1080);
  for (int x = 0; x++ < numberOfSemis; semiList.add(new Semi())); 
}

void draw(){
  background(0);
  for (Semi s : semiList){
    s.drawSemi();
  }
}
