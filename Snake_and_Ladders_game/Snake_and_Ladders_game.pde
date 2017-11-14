//globals
String r = "1, 2, 3, 4, 5, 6";
int state;
int[][] board;
int rows, cols;
int charX, charY;
float cellWidth, cellHeight;


void setup(){
  size(800, 800);
  
  //the dimension of the board
  cols = 6;
  rows = 5;
  
  
  initializeValues();
}


void draw() {   
    displayboard();
}


void displayboard(){
  for (int x=0; x<cols; x++) {
    for (int y=0; y<rows; y++) {      
      if (board[x][y] == 1) {
          fill(0);
      } else if (board[x][y] == 0) {
        fill(13, 211, 67); 
      }
      strokeWeight(3);
      rect(x*cellWidth, y*cellHeight, cellWidth, cellHeight);
    }
  }
}

void initializeValues() {
  board = new int[cols][rows];
  cellWidth = width/cols;
  cellHeight = height/rows;
  
  //starting point
  stroke(0);
  fill(0);
  board[0][4] = 1;

}

void getRandomNumber() {
  random(1,30);
}

void displayNumber() {
  
}


void keyPressed() {
  getRandomNumber();
}

void playerTurnRight() {
 if(charX < cols-1){
   board[charX][charY] = 0;
   charX++;
   board[charX][charY] = 1;
 }
}

void playerTurnLeft() {
  if (charX >= 1) {
    board[charX][charY] = 0;
    charX --;
    board[charX][charY] = 1;
  }
} 