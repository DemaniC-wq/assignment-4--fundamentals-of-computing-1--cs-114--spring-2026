void drawBoard() {
  stroke(0);
  strokeWeight(4);

  line(CELL_SIZE, 0, CELL_SIZE, CANVAS_SIZE);
  line(CELL_SIZE * 2, 0, CELL_SIZE * 2, CANVAS_SIZE);

  line(0, CELL_SIZE, CANVAS_SIZE, CELL_SIZE);
  line(0, CELL_SIZE * 2, CANVAS_SIZE, CELL_SIZE * 2);
}

void drawMarks() {
  for (int i = 0; i < board.length; i++) {

    int col = i % 3;
    int row = i / 3;

    int x = col * CELL_SIZE;
    int y = row * CELL_SIZE;

    if (board[i] == COMPUTER) {
      drawX(x, y);
    } else if (board[i] == PLAYER) {
      drawO(x, y);
    }
  }
}
