import 'package:finance_app/core/entities/user/user_entity.dart';
import 'package:finance_app/core/enums/database_entity.dart';
import 'package:finance_app/core/repositories/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  const UserRepositoryImpl(super.consumer);

  @override
  Future<UserEntity> add(UserEntity item) async {
    await consumer.save(DatabaseEntity.user, item.toJson());

    return item;
  }

  @override
  Future<UserEntity> delete(UserEntity item) async {
    await consumer.delete(DatabaseEntity.user, item.id);

    return item;
  }

  @override
  Future<UserEntity?> get([String? id]) async {
    final user = await consumer.load(DatabaseEntity.user, id);

    return UserEntity.fromJson(user);
  }

  @override
  Future<List<UserEntity>> getAll() async {
    return [];
  }

  @override
  Future<UserEntity> update(UserEntity item) async {
    await consumer.save(DatabaseEntity.user, item.toJson());

    return item;
  }
}
