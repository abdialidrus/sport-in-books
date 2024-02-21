import 'package:flutter/material.dart';
import 'package:sport_in_books/utils/constants/colors.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme textTheme = TextTheme(
    titleLarge: const TextStyle().copyWith(
        fontSize: 15.0,
        fontWeight: FontWeight.w800,
        color: TColors.textPrimary),
    titleMedium: const TextStyle().copyWith(
        fontSize: 15.0,
        fontWeight: FontWeight.w700,
        color: TColors.textPrimary),
    titleSmall: const TextStyle().copyWith(
        fontSize: 15.0,
        fontWeight: FontWeight.w600,
        color: TColors.textPrimary),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
        color: TColors.textPrimary),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        color: TColors.textPrimary),
    bodySmall: const TextStyle().copyWith(
        fontSize: 10.0,
        fontWeight: FontWeight.w500,
        color: TColors.textPrimary),
  );
}
