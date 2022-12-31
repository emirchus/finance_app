import 'package:finance_app/application/router/app_router.dart';
import 'package:finance_app/application/theme/app_theme.dart';
import 'package:flutter/material.dart';


final AppRoutes _appRoutes = AppRoutes();
class Application extends StatelessWidget {

  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: lighAppTheme,
      routerConfig: _appRoutes.router,
    );
  }
}