//globals
String r = "1, 2, 3, 4, 5, 6,";
//String[] numbers = split(r, " ");
int state;
int[][] gameBoard;
int rows, cols;
int charX, charY;
float cellWidth, cellHeight;
float referenceNumber;

void setup(){
  size(600, 600);
  
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
      if (gameBoard[x][y] == 1) {
          fill(0);
      } else if (gameBoard[x][y] == 0) {
        fill(13, 211, 67); 
      }
      strokeWeight(3);
      rect(x*cellWidth, y*cellHeight, cellWidth, cellHeight);
    }
  }
}

void initializeValues() {
  gameBoard = new int[cols][rows];
  cellWidth = width/cols;
  cellHeight = height/rows;
  
  //starting point
  stroke(0);
  fill(0);
  gameBoard[0][4] = 1;

}

//void displayNumber() {
  //textSize (50);
  //fill(0);
  //textAlign(CENTER, CENTER);
  //text(randomNumber, xDIce, yDice);
//}

void getRandomNumber() {
  float r = int(random(1,6));
  println(r);
}


void keyPressed() {
  getRandomNumber();
}

void playerTurnRight() {
 if(charX < cols-1){
   gameBoard[charX][charY] = 0;
   charX++;
   gameBoard[charX][charY] = 1;
 }
}

void playerTurnLeft() {
  if (charX >= 1) {
    gameBoard[charX][charY] = 0;
    charX --;
    gameBoard[charX][charY] = 1;
  }
} 