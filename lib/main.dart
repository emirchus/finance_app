import 'package:finance_app/application/application.dart';
import 'package:finance_app/application/injector.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(
    const Injector(
      child: Application(),
    ),
  );
}
