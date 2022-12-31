import 'package:finance_app/application/application.dart';
import 'package:finance_app/application/injector_app.dart';
import 'package:finance_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> mainCommon() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const InjectorApp(
      child: Application(),
    ),
  );
}
