//change size of HLines & Vlines to change number of each type of line that program spawns
HorizontalLine[] hLines = new HorizontalLine[50];
VerticalLine[] vLines = new VerticalLine[100];

//parameters for progam use
int hSpacing;
int vSpacing;
int hLocation;
int vLocation;

void setup() {
  //set size of window and renderer
  size(1920, 1080, P2D);
  //find spacing between lines
  hSpacing = (height/hLines.length);
  vSpacing = (width/vLines.length);
  //create HorizontalLine objects with equal spacing
  for(int i = 0; i < hLines.length; i++){
    hLines[i] = new HorizontalLine(hLocation += hSpacing);
  }
  //create VerticalLine objects with equal spacing
  for(int i = 0; i < vLines.length; i++){
    vLines[i] = new VerticalLine(vLocation += vSpacing);
  }
}

void draw() {
  //redraws background every frame
  background(0);
  //draws and moves each vertical line in vLines
  for(VerticalLine v : vLines){
    v.drawVerticalLines();
    v.moveVerticalLines();
  }
  //draws and moves each horizontal line in hLines
  for(HorizontalLine h : hLines){
    h.drawHorizontalLines();
    h.moveHorizontalLines();
  }
}
