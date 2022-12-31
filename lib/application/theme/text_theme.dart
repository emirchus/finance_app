import 'package:finance_app/application/theme/colors_theme.dart';
import 'package:flutter/material.dart';

const TextStyle baseTextStyle = TextStyle(
  fontFamily: 'Philippa',
  fontWeight: FontWeight.w400,
  color: primaryColor,
);

final textTheme = TextTheme(
  displayLarge: baseTextStyle.copyWith(
    fontSize: 57.0,
    height: 64 / 57,
  ),
  displayMedium: baseTextStyle.copyWith(
    fontSize: 45.0,
    height: 52 / 45,
  ),
  displaySmall: baseTextStyle.copyWith(
    fontSize: 36.0,
    height: 44 / 36,
  ),
  headlineLarge: baseTextStyle.copyWith(
    fontSize: 32.0,
    height: 40 / 32,
  ),
  headlineMedium: baseTextStyle.copyWith(
    fontSize: 28.0,
    height: 36 / 28,
  ),
  headlineSmall: baseTextStyle.copyWith(
    fontSize: 24.0,
    height: 32 / 24,
  ),
  titleLarge: baseTextStyle.copyWith(
    fontSize: 22.0,
    height: 28 / 22,
    fontWeight: FontWeight.w400,
  ),
  titleMedium: baseTextStyle.copyWith(
    fontSize: 16.0,
    height: 24 / 16,
    fontWeight: FontWeight.w500,
  ),
  titleSmall: baseTextStyle.copyWith(
    fontSize: 14.0,
    height: 20 / 14,
    fontWeight: FontWeight.w500,
  ),
  labelLarge: baseTextStyle.copyWith(
    fontSize: 14.0,
    height: 29 / 14,
    fontWeight: FontWeight.w500,
  ),
  labelMedium: baseTextStyle.copyWith(
    fontSize: 12.0,
    height: 16 / 12,
    fontWeight: FontWeight.w500,
  ),
  labelSmall: baseTextStyle.copyWith(
    fontSize: 11.0,
    height: 16 / 11,
    fontWeight: FontWeight.w500,
  ),
  bodyLarge: baseTextStyle.copyWith(
    fontSize: 16.0,
    height: 24 / 16,
  ),
  bodyMedium: baseTextStyle.copyWith(
    fontSize: 14.0,
    height: 20 / 14,
  ),
  bodySmall: baseTextStyle.copyWith(
    fontSize: 12.0,
    height: 16 / 12,
  ),
);
