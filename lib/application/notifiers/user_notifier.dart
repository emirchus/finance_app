import 'package:finance_app/core/entities/user/user_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserNotifier extends StateNotifier<UserEntity?> {
  UserNotifier(): super(null);

  void setUser(UserEntity? user) => state = user;

  void clearUser() => state = null;

}