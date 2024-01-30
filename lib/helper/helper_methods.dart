bool isWhite(int index) {
  // patterns in chessboard
  int x = index ~/ 8; // row, integer division operator
  int y = index % 8; // column

  bool isWhite = (x + y) % 2 == 0;
  return isWhite;
}

bool isInBoard(int row, int col) {
  return row >= 0 && row < 8 && col >= 0 && col < 8;
}
