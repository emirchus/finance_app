import 'package:finance_app/application/router/app_paths.dart';
import 'package:finance_app/presentation/home/home_screen.dart';
import 'package:finance_app/presentation/login/login_screen.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: AppPaths.home,
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: AppPaths.login,
            builder: (context, state) => const LoginScreen(),
          ),
        ],
      ),
    ],
  );

  GoRouter get router => _router;
}
