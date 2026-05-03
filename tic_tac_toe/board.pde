void initializeBoard() {
  for (int i = 0; i < board.length; i++) {
    board[i] = EMPTY;
  }
  gameOver = false;
}

void handlePlayerInput(char key) {

  if (gameOver) {
    println("The game has ended.");
    return;
  }

  if (key < '0' || key > '8') {
    println("Invalid input! Enter 0–8.");
    return;
  }
