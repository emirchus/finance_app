import 'package:finance_app/application/theme/colors_theme.dart';
import 'package:finance_app/application/theme/text_theme.dart';
import 'package:flutter/material.dart';

final ThemeData lighAppTheme = ThemeData(
  useMaterial3: true,
  textTheme: textTheme,
  colorScheme: colorLightScheme,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true
  ),
);
