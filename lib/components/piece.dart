enum ChessPieceType { pawn, rook, knight, bishop, king, queen }

class ChessPiece {
  final ChessPieceType type;
  final bool isWhite;
  final String imagePath;
  bool hasMoved = true;

  ChessPiece(
      {required this.type, required this.isWhite, required this.imagePath});
}
