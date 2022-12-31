import 'package:finance_app/core/enums/auth_enum.dart';
import 'package:finance_app/core/repositories/user_repository.dart';
import 'package:finance_app/core/services/user_services.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            GetIt.I<UserService>().authenticate(AuthEnum.google);
          },
          child: FutureBuilder(
            future: GetIt.I<UserRepository>().get(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.toString());
              } else {
                return Text('No data');
              }
            },
          ),
        ),
      ),
    );
  }
}
