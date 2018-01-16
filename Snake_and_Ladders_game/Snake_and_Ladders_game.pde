//globals
String r = "1, 2, 3, 4, 5, 6,";
int[][] randomBoard;
int rows, cols;
int charX, charY;
float cellWidth, cellHeight;

void setup() {
  // the font of the random numbers.
  size(600, 600);
  textFont(createFont("SansSerif",30));
  fill(0);
  textAlign(CENTER, CENTER);
  noLoop();
  
  //the dimension of the board.
  cols = 6;
  rows = 5;  
  
  initializeValues();
} 

void draw() {  
    getRandomMoves();
    displayBoard();
}

void displayBoard(){
  // the randomness of the numbers.
 int boardNum = int(random(1,30));
 // the randomboard.
  for (int x=0; x<cols; x++) {
    for (int y=0; y<rows; y++) {      
     if  (randomBoard[x][y] == 1) {          
       // the randomness of the randomboard's colors.
          fill( random(255), random(255), random(255), random(255));
          text(boardNum++, x*90+45, y*90+45);
    } 
      else if (randomBoard[x][y] == 0)         
        fill( random(255), random(255), random(255), random(255));
        rect(x*cellWidth, y*cellHeight, cellWidth, cellHeight);
    }
  }
}

void initializeValues() {
  // the gameboards setup.
  randomBoard = new int[cols][rows];
  cellWidth = width/cols;
  cellHeight = height/rows;
  
  //random starting point.
  fill(0);
  randomBoard[0][4] = 1;

}

void getRandomNumber() { 
  //the randomboard's strings that gets printed out.
  float r = int(random(1,7));
  println(r);
}

void keyPressed() {
  // gets random number and random board colors and redraws it everytime any keys ares pressed.
  getRandomNumber();
  redraw();
}

void getRandomMoves() {
  for (int x=0; x<cols; x++) {
    for (int y=0; y<rows; y++) {
      randomBoard[x][y] = int(random(2));
    }
  }
}