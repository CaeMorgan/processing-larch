//sets number of arcs that are drawn
Semi[] semiList = new Semi[1000];

void setup(){
  //set size of window and renderer
  size(1920,1080,P2D);
  //adds arcs of random x coord to array
  for (int i = 0; i < semiList.length; i++){
    semiList[i] = new Semi(random(0,width));
  }
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
