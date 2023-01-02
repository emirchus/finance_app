import 'package:finance_app/application/notifiers/user_notifier.dart';
import 'package:finance_app/core/enums/auth_enum.dart';
import 'package:finance_app/core/repositories/user_repository.dart';
import 'package:finance_app/core/services/user_services.dart';
import 'package:flutter/material.dart';

class AuthNotifier extends ChangeNotifier {
  final PageController _pageController = PageController();

  PageController get pageController => _pageController;

  final UserService userService;
  final UserRepository userRepository;
  final UserNotifier userNotifier;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  GlobalKey<FormState> get formKey => _formKey;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  AuthNotifier(this.userService, this.userRepository, this.userNotifier);

  void nextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  Future<String?> signInWithGoogle() async {
    try {
      await userService.authenticate(AuthEnum.google);

      final user = await userRepository.get();

      userNotifier.setUser(user);

      return null;
    } catch (e) {
      print(e);
      return "Oops! Something went wrong.";
    }
  }

  Future<String?> signInWithFacebook() async {
    try {
      await userService.authenticate(AuthEnum.facebook);

      final user = await userRepository.get();

      userNotifier.setUser(user);

      return null;
    } catch (e) {
      return "Oops! Something went wrong.";
    }
  }

  Future<String?> signInWithEmail() async {
    try {
      await userService.authenticate(AuthEnum.google);

      final user = await userRepository.get();

      userNotifier.setUser(user);

      return null;
    } catch (e) {
      return "Oops! Something went wrong.";
    }
  }
}
