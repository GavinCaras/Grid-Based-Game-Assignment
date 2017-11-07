//globals
String startingScreen;
int state;
int[][] board;
int rows, cols;
int playerOne;
int playerTwo;
float cellWidth, cellHeight;
float buttonX, buttonY, buttonWidth, buttonHeight;
float buttonTop, buttonBottom, buttonLeftSide, buttonRightSide;


void setup(){
  size(800, 800);
  state = 0;
  
  //the text
  startingScreen = "Press the button to play";
  
  //the button's position
  buttonX = 100;
  buttonY = 300;
  buttonWidth = 600;
  buttonHeight = 200;
  
  //the button's side calculation
  buttonTop = buttonY;
  buttonBottom = buttonY + buttonHeight;
  buttonLeftSide = buttonX;
  buttonRightSide = buttonX + buttonWidth;
  
  //the dimension of the board
  cols = 6;
  rows = 5;
  
  initializeValues();
}


void draw() {
  if (state == 0) {
    background(255);
    fill(0);
    textSize(32);
    textAlign(CENTER);
    text(startingScreen, 400, 250);
    
    displayButton();
  } else {
    onePlayer();
    displayboard();
  }
}

void mousePressed() {
  if (mouseIsOnButton()) {
    background(255);
    state = 1;
  }
}

void displayButton() {
  if (mouseIsOnButton() ) {
    fill(#E30918); 
  } else {
    fill(#07D840);
  }
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
}

boolean mouseInLocation1() {
  return mouseIsWithin(0, 0, 200, 200);
}

boolean mouseIsWithin(float leftSide, float rightSide, float top, float bottom) {
  return ((mouseX > leftSide) &&
    (mouseX < rightSide) &&
    (mouseY > top) &&
    (mouseY < bottom));
}

boolean mouseIsOnButton() {
  return ((mouseX > buttonLeftSide) &&
    (mouseX < buttonRightSide) &&
    (mouseY > buttonTop) &&
    (mouseY < buttonBottom));
}

void displayboard(){
  for (int x=0; x<cols; x++) {
    for (int y=0; y<rows; y++) {
      if (board[x][y] == 1) {
      } else {
        fill(#0DD343); 
      }
      rect(x*cellWidth, y*cellHeight, cellWidth, cellHeight);
    }
  }
}

void initializeValues() {
  board = new int[cols][rows];
  cellWidth = width/cols;
  cellHeight = height/rows;
  stroke(250);
  
  //starting point
  board[0][4] = 1;

}


void onePlayer() {
  fill(0);
  ellipse(X*cellWidth, Y*cellWidth, cellWidth/2, cellHeight/2);
}