import 'package:finance_app/application/theme/colors_theme.dart';
import 'package:finance_app/application/theme/text_theme.dart';
import 'package:flutter/material.dart';

final ThemeData lighAppTheme = ThemeData(
  useMaterial3: true,
  textTheme: textTheme,
  colorScheme: colorLightScheme,
  backgroundColor: backgroundColor,
  appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0, centerTitle: true),
  inputDecorationTheme: const InputDecorationTheme(
    contentPadding: EdgeInsets.only(left: 10, top: 10),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black12, width: 1),
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black12, width: 1),
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: onPrimaryColor, width: 1),
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.redAccent, width: 1),
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black12, width: 1),
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.redAccent, width: 1),
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
    ),
    filled: true,
    fillColor: Colors.white,
    alignLabelWithHint: true,
  ),
);
