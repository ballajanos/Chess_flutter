import 'package:final_project/components/piece.dart';
import 'package:final_project/values/colors.dart';
import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final bool isWhite;
  final ChessPiece? piece;
  final bool isSelected;
  final bool isValidMove;
  final void Function()? onTap;

  const Square(
      {super.key,
      required this.isWhite,
      required this.piece,
      required this.isSelected,
      required this.onTap,
      required this.isValidMove});

  @override
  Widget build(BuildContext context) {
    Color? squareColor;
    // if it is selected yellow
    if (isSelected) {
      squareColor = Color.fromARGB(255, 238, 223, 88);
    } else if (isValidMove) {
      squareColor = Color.fromARGB(255, 238, 227, 132);
    } else {
      squareColor = isWhite
          ? foregroundColor
          : backgroundColor; // foreground - light, background - dark
    }

    return GestureDetector(
        onTap: onTap,
        child: Container(
          color: squareColor,
          margin: EdgeInsets.all(isValidMove ? 8 : 0), // marginile
          child: piece != null
              ? Image.asset(piece!.imagePath,
                  color: piece!.isWhite
                      ? Colors.white
                      : Colors.black) // colour regulation
              : null, // check if the child is not null, if exist than return an image.asset widget with the image path taken from the imagePath property of the piece
          // if piece is null, than returns null as the child
        ));
  }
}
