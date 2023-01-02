import 'package:finance_app/application/providers/auth_provider.dart';
import 'package:finance_app/presentation/screens/auth/ui/sign_in_screen.dart';
import 'package:finance_app/presentation/screens/auth/ui/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthScreen extends ConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.read(authProvider.select((value) => value.pageController));

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            WelcomeScreen(),
            SignInScreen(),
          ],
        ),
      ),
    );
  }
}
