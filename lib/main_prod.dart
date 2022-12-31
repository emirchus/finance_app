import 'package:finance_app/application/injector.dart';
import 'package:finance_app/main_common.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ProdInjector.instance.init();

  await mainCommon();
}
