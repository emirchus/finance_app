import 'package:finance_app/application/providers/user_provider.dart';
import 'package:finance_app/core/enums/auth_enum.dart';
import 'package:finance_app/core/services/user_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("HOME CALL");
    final user = ref.read(userProvider)!;

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              GetIt.I<UserService>().authenticate(AuthEnum.google);
            },
            child: Text(user.name)
          ),
        ),
      ),
    );
  }
}
