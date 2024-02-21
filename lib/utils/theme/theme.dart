import 'package:flutter/material.dart';
import 'package:sport_in_books/utils/constants/colors.dart';
import 'package:sport_in_books/utils/theme/widget_theme/scrollbar_theme.dart';
import 'package:sport_in_books/utils/theme/widget_theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData appTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'FreeSetExtraBoldC',
    primaryColor: TColors.primary,
    textTheme: TTextTheme.textTheme,
    scaffoldBackgroundColor: TColors.white,
    scrollbarTheme: TScrollbarTheme.scrollbarThemeData,
  );
}
