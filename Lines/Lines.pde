//change value of HLines & Vlines to change number of each type of line that program spawns
int numberOfVLines = 100;
int numberOfHLines = 50;

//parameters for progam use
int hSpacing;
int vSpacing;
int hLocation;
int vLocation;
ArrayList<HorizontalLine> hLines = new ArrayList<HorizontalLine>();
ArrayList<VerticalLine> vLines = new ArrayList<VerticalLine>();

void setup() {
  // set size of window
  size(1920, 1080);
  // set colour of background
  background(0);
  //find spacing between lines
  hSpacing = (height/numberOfHLines);
  vSpacing = (width/numberOfVLines);
  //create (numberOfVLines) VerticalLine objects with equal spacing
  for(int x = 0; x++ < numberOfVLines; vLines.add(new VerticalLine(vLocation += vSpacing))){
  }
  //create (numberOfHLines) HorizontalLine objects 
  for(int x = 0; x++ < numberOfHLines; hLines.add(new HorizontalLine(hLocation += hSpacing))){
  }
}

void draw() {
  //redraws background every frame
  background(0);
  //draws and moves each vertical line in vLines
  for (VerticalLine v : vLines){
    v.drawVerticalLines();
    v.moveVerticalLines();
  }
  //draws and moves each horizontal line in hLines
  for (HorizontalLine h : hLines){
    h.drawHorizontalLines();
    h.moveHorizontalLines();
  }
}
