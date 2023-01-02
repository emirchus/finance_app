import 'package:finance_app/application/notifiers/auth_notifier.dart';
import 'package:finance_app/application/providers/user_provider.dart';
import 'package:finance_app/core/repositories/user_repository.dart';
import 'package:finance_app/core/services/user_services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

final authProvider = ChangeNotifierProvider<AuthNotifier>(
  (ref) {
    final userService = GetIt.I<UserService>();
    final userRepository = GetIt.I<UserRepository>();
    final userNotifier = ref.read(userProvider.notifier);
    return AuthNotifier(userService, userRepository, userNotifier);
  },
  dependencies: [userProvider],
);
