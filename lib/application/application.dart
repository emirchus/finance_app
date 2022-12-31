import 'package:finance_app/application/theme/app_theme.dart';
import 'package:flutter/material.dart';


class Application extends StatelessWidget {

  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lighAppTheme,
    );
  }
}