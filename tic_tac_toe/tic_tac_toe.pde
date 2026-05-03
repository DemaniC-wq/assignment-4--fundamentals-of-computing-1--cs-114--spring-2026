char[] board = new char[9];
boolean gameOver = false;

void setup() {
  size(500, 500);
  initializeBoard();
  computerMove(); // computer starts
}

void draw() {
  background(255);
  drawBoard();
  drawMarks();
}

void keyPressed() {
  handlePlayerInput(key);
}
