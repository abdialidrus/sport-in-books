import 'package:flutter/material.dart';
import 'package:sport_in_books/utils/constants/colors.dart';

class TText extends StatelessWidget {
  const TText(
      {super.key,
      required this.text,
      required this.style,
      this.textAlign = TextAlign.start});

  final String text;
  final TextAlign? textAlign;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: style!.copyWith(
        shadows: [
          const Shadow(
              // bottomLeft
              offset: Offset(-1.5, -1.5),
              color: TColors.textSecondary),
          const Shadow(
              // bottomRight
              offset: Offset(1.5, -1.5),
              color: TColors.textSecondary),
          const Shadow(
              // topRight
              offset: Offset(1.5, 1.5),
              color: TColors.textSecondary),
          const Shadow(
              // topLeft
              offset: Offset(-1.5, 1.5),
              color: TColors.textSecondary),
        ],
      ),
    );
  }
}
