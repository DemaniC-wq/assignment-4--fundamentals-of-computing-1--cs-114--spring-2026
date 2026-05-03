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

  int index = key - '0';

  if (board[index] != EMPTY) {
    println("That square is already taken.");
    return;
  }

  board[index] = PLAYER;

  if (checkWin(PLAYER)) {
    println("You win!");
    gameOver = true;
    return;
  }

  println("Game still in play.");

  computerMove();

  if (checkWin(COMPUTER)) {
    println("Computer wins.");
    gameOver = true;
    return;
  }

  if (boardFull()) {
    println("No one has won.");
    gameOver = true;
    return;
  }
