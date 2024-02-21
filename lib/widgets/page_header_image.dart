import 'package:flutter/material.dart';

enum HeaderSize { large, medium, small }

class PageHeaderImage extends StatelessWidget {
  const PageHeaderImage({
    super.key,
    required this.imagePath,
    this.size = HeaderSize.medium,
  });

  final String imagePath;
  final HeaderSize? size;

  double _getHeight() {
    if (size == HeaderSize.large) {
      return 166.0;
    } else if (size == HeaderSize.medium) {
      return 107.0;
    } else {
      return 48.0;
    }
  }

  double _getWidth() {
    if (size == HeaderSize.large) {
      return 320.63;
    } else if (size == HeaderSize.medium) {
      return 206.67;
    } else {
      return 92.71;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: _getWidth(),
      height: _getHeight(),
    );
  }
}
