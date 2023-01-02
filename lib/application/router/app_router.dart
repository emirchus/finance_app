import 'package:finance_app/application/router/app_paths.dart';
import 'package:finance_app/presentation/screens/auth/auth_screen.dart';
import 'package:finance_app/presentation/screens/home/home_screen.dart';
import 'package:finance_app/presentation/screens/splash/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const SizedBox(),
        routes: [
          GoRoute(
            path: "auth",
            builder: (context, state) => const AuthScreen(),
          ),
          GoRoute(
            path: "home",
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: "splash",
            builder: (context, state) => const SplashScreen(),
          )
        ],
      ),
    ],
    initialLocation: AppPaths.auth,
  );

  GoRouter get router => _router;
}
