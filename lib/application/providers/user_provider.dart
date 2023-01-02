import 'package:finance_app/application/notifiers/user_notifier.dart';
import 'package:finance_app/core/entities/user/user_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProvider = StateNotifierProvider<UserNotifier, UserEntity?>((ref) {
  return UserNotifier();
});
