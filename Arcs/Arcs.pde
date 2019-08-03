//sets number of arcs that are drawn (80+ is slow)
int numberOfSemis = 50;
//list for storing arc objects
ArrayList<Semi> semiList = new ArrayList<Semi>();

void setup(){
  size(1920,1080);
  //adds arcs to array
  for (int x = 0; x++ < numberOfSemis; semiList.add(new Semi((random(0,width))))); 
}

void draw(){
  background(0);
  //iterates through selected arc functions every frame
  for (Semi s : semiList){
    s.checkEdges();
    s.drawSemi();
    s.randomSemiX();
  }
}
