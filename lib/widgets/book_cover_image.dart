import 'package:flutter/material.dart';

class BookCoverImage extends StatelessWidget {
  const BookCoverImage({
    super.key,
    required this.coverPath,
  });

  final String coverPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFF7A7A7A)),
        borderRadius: BorderRadius.circular(2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Image.asset(
          coverPath,
          width: 122,
          height: 189,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
