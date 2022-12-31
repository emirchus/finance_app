import 'package:finance_app/main.dart';
import 'package:flutter/material.dart';

Future<void> mainProd() async {
  WidgetsFlutterBinding.ensureInitialized();

  await main();
}