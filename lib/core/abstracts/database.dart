import 'package:finance_app/core/abstracts/consumer.dart';
import 'package:finance_app/core/enums/database_entity.dart';

typedef Entity = Map<String, dynamic>;
typedef Entities = List<Entity>;

abstract class LocalDatabase<T> extends Consumer {
  T get database;

  const LocalDatabase();

  Future<void> save(DatabaseEntity key, Entity value);

  Future<Entity> load(DatabaseEntity key, String search);

  Future<Entities> loadAll(DatabaseEntity key, [Map<String, dynamic>? query]);

  Future<void> update(DatabaseEntity key, String search, Entity value);

  Future<void> delete(DatabaseEntity key, String search);

  Future<void> clear(DatabaseEntity key);
}
