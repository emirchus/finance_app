import 'package:finance_app/core/abstracts/consumer.dart';
import 'package:finance_app/core/enums/auth_enum.dart';
import 'package:finance_app/core/repositories/user_repository.dart';

abstract class UserService<C extends Consumer> {
  final C consumer;
  final UserRepository userRepository;

  const UserService(this.consumer, this.userRepository);

  Future<void> authenticate(AuthEnum authEnum, [String? email, String? password]);

  Future<void> signOut();
}