import 'package:finance_app/core/abstracts/database.dart';
import 'package:finance_app/core/abstracts/repository.dart';
import 'package:finance_app/core/entities/user/user_entity.dart';

abstract class UserRepository implements Repository<UserEntity, String> {
  final LocalDatabase consumer;

  const UserRepository(this.consumer);
}
