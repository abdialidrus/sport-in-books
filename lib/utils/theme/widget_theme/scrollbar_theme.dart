import 'package:flutter/material.dart';
import 'package:sport_in_books/utils/constants/colors.dart';

class TScrollbarTheme {
  TScrollbarTheme._();

  static ScrollbarThemeData scrollbarThemeData = const ScrollbarThemeData(
    thumbVisibility: MaterialStatePropertyAll(true),
    trackVisibility: MaterialStatePropertyAll(true),
    trackColor: MaterialStatePropertyAll(Colors.white),
    trackBorderColor: MaterialStatePropertyAll(Colors.white),
    thumbColor: MaterialStatePropertyAll(TColors.primary),
    radius: Radius.circular(16),
    thickness: MaterialStatePropertyAll(8.0),
  );
}
