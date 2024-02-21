import 'package:flutter/material.dart';
import 'package:sport_in_books/utils/constants/image_strings.dart';

class TAppBackground extends StatelessWidget {
  final Widget child;

  const TAppBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: Image.asset(
            TImages.imageBgLayer3,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(TImages.imageBgLayer1),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset(TImages.imageBgLayer2),
        ),
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: child,
          ),
        )
      ],
    );
  }
}
