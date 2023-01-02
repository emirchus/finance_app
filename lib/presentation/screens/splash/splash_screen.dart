import 'package:finance_app/application/providers/user_provider.dart';
import 'package:finance_app/application/router/app_paths.dart';
import 'package:finance_app/application/router/app_router.dart';
import 'package:finance_app/application/theme/colors_theme.dart';
import 'package:finance_app/core/repositories/user_repository.dart';
import 'package:finance_app/presentation/common/loading_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    final userNot = ref.read(userProvider.notifier);
    final userRepo = GetIt.I.get<UserRepository>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Future.delayed(const Duration(seconds: 2));
      final userData = await userRepo.get();
      userNot.setUser(userData);

      if (mounted) {
        context.go(userData == null ? AppPaths.auth : AppPaths.home);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final animationWidth = size.width * 0.5;

    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoadingAnimation(
              width: animationWidth,
              height: animationWidth,
            ),
            const SizedBox(height: 20),
            Text(
              "FinanceApp",
              style: Theme.of(context).textTheme.headlineMedium?.apply(
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
