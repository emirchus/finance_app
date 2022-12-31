import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InjectorApp extends StatelessWidget {
  final Widget child;

  const InjectorApp({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: child,
    );
  }
}
